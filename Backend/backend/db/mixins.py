from sqlalchemy import Column, DateTime, func
from datetime import datetime

class TimestampMixin:
    created_at = Column(DateTime, index=True, nullable=False, server_default=func.now())
    updated_at = Column(DateTime, server_default=func.now(), server_onupdate=func.now(), onupdate=datetime.now)