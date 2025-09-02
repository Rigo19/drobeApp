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

try:
    from api.main import app
    print("✅ Successfully imported FastAPI app")
except Exception as e:
    print(f"❌ Error importing FastAPI app: {e}")
    sys.exit(1)

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8000))
    print(f"🚀 Starting Drobe Backend on port {port}")
    print(f"📁 Python executable: {sys.executable}")
    print(f"📁 Python path: {sys.path[:3]}")
    print(f"🌐 App will be available at: http://0.0.0.0:{port}")
    print(f"📚 API docs will be at: http://0.0.0.0:{port}/docs")
    
    try:
        uvicorn.run(
            app, 
            host="0.0.0.0", 
            port=port,
            log_level="info",
            access_log=True
        )
    except Exception as e:
        print(f"❌ Error starting server: {e}")
        sys.exit(1)
