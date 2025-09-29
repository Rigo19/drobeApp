# Use the following link as reference for initial API setup:
# https://fastapi.tiangolo.com/tutorial/first-steps/

import os
from dotenv import load_dotenv
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

load_dotenv()

# Create a simple FastAPI app first to test
app = FastAPI(title="Drobe API", version="1.0.0")

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=['*'],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Add a simple test endpoint
@app.get("/")
async def root():
    return {"message": "Drobe API is running!"}

@app.get("/health")
async def health_check():
    return {"status": "healthy", "message": "Drobe API is working!"}

# Try to import routers one by one to identify any issues
# But don't let database connection errors crash the app
try:
    from .routers import creation
    app.include_router(creation.router, prefix="/api")
    print("✅ Successfully imported creation router")
except Exception as e:
    print(f"❌ Error importing creation router: {e}")
    print("⚠️  App will continue without creation router")

try:
    from .routers import deletion
    app.include_router(deletion.router, prefix="/api")
    print("✅ Successfully imported deletion router")
except Exception as e:
    print(f"❌ Error importing deletion router: {e}")
    print("⚠️  App will continue without deletion router")

try:
    from .routers import modification
    app.include_router(modification.router, prefix="/api")
    print("✅ Successfully imported modification router")
except Exception as e:
    print(f"❌ Error importing modification router: {e}")
    print("⚠️  App will continue without modification router")

try:
    from .routers import retrieval
    app.include_router(retrieval.router, prefix="/api")
    print("✅ Successfully imported retrieval router")
except Exception as e:
    print(f"❌ Error importing retrieval router: {e}")
    print("⚠️  App will continue without retrieval router")

if __name__ == "__main__":
    import uvicorn
    port = int(os.environ.get("PORT", 8000))
    uvicorn.run(app, host="0.0.0.0", port=port)