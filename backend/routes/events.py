from fastapi import APIRouter, HTTPException
from models.event import Event
from schemas.event_schema import serialize_event, serialize_events
from services.mongo import event_collection
from bson import ObjectId

router = APIRouter(prefix="/events", tags=["Events"])

@router.get("")
async def get_events():
    events = await event_collection.find().to_list(100)
    return {"events": serialize_events(events)}

@router.post("/add")
async def add_event(event: Event):
    new_event = event.dict()
    result = await event_collection.insert_one(new_event)
    if result.inserted_id:
        return {"success": True, "event_id": str(result.inserted_id)}
    raise HTTPException(status_code=500, detail="Event creation failed.")

