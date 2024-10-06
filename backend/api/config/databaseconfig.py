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


load_dotenv()

databaseHost = os.getenv('host')
databaseUser = os.getenv('user')
databasePassword = os.getenv('password')

# below is a function that returns a connection to the database and cursor
# for use in the separate router files
def get_connection():
    drobeDatabaseConnection = mysql.connector.connect(host = databaseHost, user = databaseUser,password= databasePassword, database = 'drobeApp')
    drobeDatabaseCursor = drobeDatabaseConnection.cursor()
    
    return drobeDatabaseConnection, drobeDatabaseCursor


databaseConfig = {
    "database": "drobeApp",
    "user": databaseUser,
    "host": databaseHost,
    "password": databasePassword
}

connectionPool = mysql.connector.pooling.MySQLConnectionPool(pool_name = "sqlPool",
                                                             pool_size= 4,
                                                             **databaseConfig)