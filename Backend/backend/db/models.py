from sqlalchemy import Column, String, Integer, DateTime, func, ForeignKey
from db.base import Base
from datetime import datetime
from db.mixins import TimestampMixin
from sqlalchemy.orm import relationship


class User(TimestampMixin, Base):
    __tablename__ = 'user'

    username = Column(String(128), index=True, nullable=False)
    first_name = Column(String(64))
    last_name = Column(String(64))
    age = Column(Integer, nullable=False)

    notifications = relationship('Notification', back_populates='user')

class Notification(TimestampMixin, Base):
    __tablename__ = 'notification'
    user_id = Column(ForeignKey('user.id'), index=True, nullable=False)

    message = Column(String(512), nullable=False, default='')

    user = relationship('User', back_populates='notifications')
