#!/usr/bin/env python3
"""
Deployment script for Railway
"""
import os
import sys
import uvicorn

# Add the current directory to Python path
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# Activate virtual environment if it exists
venv_path = "/opt/venv"
if os.path.exists(venv_path):
    activate_script = os.path.join(venv_path, "bin", "activate_this.py")
    if os.path.exists(activate_script):
        with open(activate_script) as f:
            exec(f.read(), dict(__file__=activate_script))

from api.main import app

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8000))
    print(f"Starting Drobe Backend on port {port}")
    print(f"Python executable: {sys.executable}")
    print(f"Python path: {sys.path[:3]}")
    uvicorn.run(app, host="0.0.0.0", port=port)
