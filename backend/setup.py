from setuptools import setup, find_packages

setup(
    name="drobe-backend",
    version="1.0.0",
    description="Drobe Backend API",
    packages=find_packages(),
    install_requires=[
        "fastapi==0.115.0",
        "uvicorn==0.30.6",
        "python-dotenv==1.0.1",
        "mysql-connector-python==9.0.0",
        "python-multipart==0.0.10",
        "bcrypt==4.2.0",
        "requests==2.31.0",
        "pydantic==2.9.2",
    ],
    python_requires=">=3.8",
)
