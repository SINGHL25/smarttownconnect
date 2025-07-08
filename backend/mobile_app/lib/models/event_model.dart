from pydantic import BaseModel
from typing import Optional
from datetime import datetime

class Event(BaseModel):
    id: Optional[str]
    title: str
    description: str
    date: str
    location: str
    created_by: Optional[str] = "admin"
    created_at: Optional[datetime] = datetime.now()

