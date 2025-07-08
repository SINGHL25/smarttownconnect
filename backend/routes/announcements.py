# announcements.py (Router)

from fastapi import APIRouter, HTTPException
from models.announcements import Announcement
from services.mongo import get_collection
from bson import ObjectId

router = APIRouter(prefix="/announcements", tags=["Announcements"])
collection = get_collection("announcements")

@router.get("/")
async def get_announcements():
    return [dict(a, id=str(a["_id"])) for a in await collection.find().to_list(100)]

@router.post("/")
async def create_announcement(announcement: Announcement):
    result = await collection.insert_one(announcement.dict())
    return {"id": str(result.inserted_id)}

@router.delete("/{announcement_id}")
async def delete_announcement(announcement_id: str):
    result = await collection.delete_one({"_id": ObjectId(announcement_id)})
    if result.deleted_count == 0:
        raise HTTPException(status_code=404, detail="Announcement not found")
    return {"message": "Deleted"}

