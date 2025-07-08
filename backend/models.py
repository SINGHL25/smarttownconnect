### Sample: backend/models.py
```python
from pydantic import BaseModel
from typing import Optional

class User(BaseModel):
    username: str
    email: str
    flat_number: str
    role: str  # admin/resident/security

class Announcement(BaseModel):
    title: str
    description: str
    date: str

class Event(BaseModel):
    name: str
    description: str
    date: str
    location: str
```
