def serialize_event(event) -> dict:
    return {
        "id": str(event["_id"]),
        "title": event["title"],
        "description": event["description"],
        "date": event["date"],
        "location": event["location"],
        "created_by": event.get("created_by", ""),
        "created_at": event.get("created_at", "")
    }

def serialize_events(events) -> list:
    return [serialize_event(e) for e in events]

