### Sample: backend/routes/auth.py
```python
from fastapi import APIRouter

router = APIRouter(prefix="/auth")

@router.post("/login")
def login():
    return {"msg": "Login endpoint"}
```
