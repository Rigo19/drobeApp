# Use the following link as reference for initial API setup:
# https://fastapi.tiangolo.com/tutorial/first-steps/

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "This is the root endpoint AKA path AKA route"}