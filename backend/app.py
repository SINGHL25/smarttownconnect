### Sample: backend/app.py
```python
from fastapi import FastAPI
from routes import auth, residents, gate_entry, announcements, events

app = FastAPI()

app.include_router(auth.router)
app.include_router(residents.router)
app.include_router(gate_entry.router)
app.include_router(announcements.router)
app.include_router(events.router)

@app.get("/")
def read_root():
    return {"msg": "SmartTownConnect API is running"}
