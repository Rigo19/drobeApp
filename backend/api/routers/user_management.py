from pydantic import BaseModel
from fastapi import APIRouter, HTTPException
from api.config.databaseconfig import get_connection
import hashlib
import uuid
from datetime import datetime, timedelta

# Define request models
class CreateUserRequest(BaseModel):
    email: str
    password: str
    name: str
    zipCode: str
    timeZone: str
    birthday: str = None

class CreateWebSessionRequest(BaseModel):
    userID: int

router = APIRouter()

# Helper function to get database connection safely
def get_db_connection():
    try:
        return get_connection()
    except Exception as e:
        print(f"Database connection error: {e}")
        raise HTTPException(status_code=500, detail="Database connection failed")

# Create user endpoint
@router.post("/createUser/", status_code=201)
async def create_user(user_data: CreateUserRequest):
    try:
        drobeDatabaseConnection, drobeDatabaseCursor = get_db_connection()
        
        # Check if user already exists
        check_query = "SELECT userID FROM UserInfo WHERE email = %s"
        drobeDatabaseCursor.execute(check_query, (user_data.email,))
        existing_user = drobeDatabaseCursor.fetchone()
        
        if existing_user:
            raise HTTPException(status_code=400, detail="User with this email already exists")
        
        # Hash the password using bcrypt
        import bcrypt
        hashed_password = bcrypt.hashpw(user_data.password.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')
        
        # Insert new user
        insert_query = """
            INSERT INTO UserInfo (name, email, hashedPassword, timeAccountCreated, timeZone, zipCode, birthday, isRegistrationConfirmed)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        
        current_time = datetime.now()
        drobeDatabaseCursor.execute(insert_query, (
            user_data.name,
            user_data.email,
            hashed_password,
            current_time,
            user_data.timeZone,
            user_data.zipCode,
            user_data.birthday,
            1  # Registration confirmed
        ))
        
        drobeDatabaseConnection.commit()
        
        # Get the new user ID
        user_id = drobeDatabaseCursor.lastrowid
        
        return {"message": "User created successfully", "userID": user_id}
        
    except HTTPException:
        raise
    except Exception as e:
        print(f"Create user error: {e}")
        raise HTTPException(status_code=500, detail="Internal server error")

# Create web session endpoint
@router.post("/createWebSession/", status_code=201)
async def create_web_session(session_data: CreateWebSessionRequest):
    try:
        drobeDatabaseConnection, drobeDatabaseCursor = get_db_connection()
        
        # Generate a session ID
        session_id = str(uuid.uuid4())
        
        # Insert session into WebSessions table
        insert_query = """
            INSERT INTO WebSessions (userID, sessionID, timeCreated, timeExpires)
            VALUES (%s, %s, %s, %s)
        """
        
        current_time = datetime.now()
        expiry_time = current_time + timedelta(hours=24)  # Session expires in 24 hours
        
        drobeDatabaseCursor.execute(insert_query, (
            session_data.userID,
            session_id,
            current_time,
            expiry_time
        ))
        
        drobeDatabaseConnection.commit()
        
        return {"message": {"Session ID": session_id}}
        
    except Exception as e:
        print(f"Create web session error: {e}")
        raise HTTPException(status_code=500, detail="Internal server error")

# Delete web session endpoint
@router.delete("/deleteWebSession/{userID}", status_code=200)
async def delete_web_session(userID: int):
    try:
        drobeDatabaseConnection, drobeDatabaseCursor = get_db_connection()
        
        # Delete all sessions for this user
        delete_query = "DELETE FROM WebSessions WHERE userID = %s"
        drobeDatabaseCursor.execute(delete_query, (userID,))
        
        drobeDatabaseConnection.commit()
        
        return {"message": "Web session deleted successfully"}
        
    except Exception as e:
        print(f"Delete web session error: {e}")
        raise HTTPException(status_code=500, detail="Internal server error")
