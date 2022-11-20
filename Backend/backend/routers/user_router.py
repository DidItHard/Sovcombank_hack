from sqlalchemy.ext.asyncio import AsyncSession
from fastapi import APIRouter, HTTPException, Response, Depends
from routers.schemas import UserList, UserSchema, UpdateUserSchema, NotificationSchema, NotificationList
from datetime import datetime
from db.engine import get_async_session
from db import User, Notification
from sqlalchemy.future import select
from sqlalchemy import delete
from typing import List
from pydantic import parse_obj_as
from sqlalchemy.orm import selectinload

from routers.schemas import ExtendedUserSchema

user_router = APIRouter(prefix='/users', tags=['Пользователи'])


# users = [
#     User(id=1, username='tw0ch', first_name='Egor', last_name='Misulin', age=18, created_at=datetime.now()),
#     User(id=2, username='boss_with_pencil', first_name='Danial', last_name='Orlov', age=18, created_at=datetime.now()),
#     User(id=3, username='cheeky_drinker', first_name='Tanya', last_name='Bobileva', age=17, created_at=datetime.now()),
#     User(id=4, username='MadCheddar', first_name='Mike', last_name='Nedviga', age=18, created_at=datetime.now()),
# ]


@user_router.get('/', name='Все пользователи', response_model=UserList)
async def get_all_users(session: AsyncSession = Depends(get_async_session)):
    q = select(User)
    users = (await session.execute(q)).scalars().all()
    return UserList(count=len(users), users=parse_obj_as(List[UserSchema], users))


@user_router.get('/{user_id}', name='Получить пользователя', response_model=ExtendedUserSchema)
async def get_user(user_id: int, session=Depends(get_async_session)):
    # q = select(User).where(User.id == user_id)
    # user = (await session.execute(q)).scalars().first()
    user = await session.get(User, user_id, options=[selectinload(User.notifications)])
    if user is not None:
        return ExtendedUserSchema.from_orm(user)
    raise HTTPException(status_code=404, detail="User not found")

    # for i, user in enumerate(users):
    #     if user.id == user_id:
    #         return user
    # raise HTTPException(status_code=404, detail='User not found')


@user_router.post('/', name='Добавить пользователя', response_model=UserSchema)
async def create_user(user: UserSchema, session: AsyncSession = Depends(get_async_session)):
    u = User()
    d = user.dict()
    for k in user.dict():
        setattr(u, k, d[k])
    session.add(u)
    await session.commit()
    await session.refresh(u)

    return UserSchema.from_orm(u)


@user_router.delete('/{user_id}', name='Удаление пользователя', response_class=Response)
async def delete_user(user_id: int, session: AsyncSession = Depends(get_async_session)):
    q = delete(User).where(User.id == user_id)
    await session.execute(q)
    # for i, user in enumerate(tuple(users)):
    #     if user.id == user_id:
    #         del users[i]
    #         break
    return Response(status_code=204)


@user_router.put('/{user_id}', name='Обновление данных о пользователе', response_model=UserSchema)
async def update_user(user_id: int,
                      new_user_data: UpdateUserSchema,
                      session: AsyncSession = Depends(get_async_session)):
    u = await session.get(User, user_id)
    if u is not None:
        data = new_user_data.dict()
        for key in data:
            if data[key] is not None:
                setattr(u, key, data[key])
        session.add(u)
        await session.commit()
        await session.refresh(u)
        return UserSchema.from_orm(u)
    raise HTTPException(status_code=404, detail='User not found')
    # for i in range(len(users)):
    #     if users[i].id == user_id:
    #         data = new_user_data.dict()
    #         for key in data:
    #             if data[key] is not None:
    #                 setattr(users[i], key, data[key])
    #         return users[i]


@user_router.get('/{user_id}/notifications', tags=['Уведомления'])
async def get_user_notifications(user_id: int, session: AsyncSession = Depends(get_async_session)):
    u = await session.get(User, user_id, options=selectinload(User.notifications))
    if u is None:
        raise HTTPException(status_code=404, detail='User not found')

    q = select(Notification).where(Notification.user_id == user_id)

    notifications = (await session.execute(q)).scalars().all()
    return NotificationList(
        count=len(notifications),
        notifications=parse_obj_as(List[NotificationSchema], notifications)
    )


# fgTdewiWGfa!Yi7
# [CHG] Device 94:DB:56:9E:83:D8 RSSI: -43
# uzx3zVPagr