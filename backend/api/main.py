# Use the following link as reference for initial API setup:
# https://fastapi.tiangolo.com/tutorial/first-steps/

from typing import Annotated, Optional
import os
from dotenv import load_dotenv
from fastapi import FastAPI, UploadFile, File, HTTPException, Response
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import mysql.connector
from datetime import datetime
import sys
from mysql.connector import errors
from fastapi import APIRouter
from .routers import creation, deletion, modification, retrieval

load_dotenv()

databaseHost = os.getenv('host')
databaseUser = os.getenv('user')
databasePassword = os.getenv('password')





# the cursor defined below is what you will 
# use to run queries with the database

origins = ['*']

# the code below ensures that CORS errors don't occur during API calls
app = FastAPI()

app.include_router(creation.router)
app.include_router(deletion.router)
app.include_router(modification.router)
app.include_router(retrieval.router)


app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)