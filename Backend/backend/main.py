from fastapi import FastAPI
from routers.user_router import user_router


def create_app() -> FastAPI:
    app = FastAPI(
        title='Тестовое приложение',
        version='0.0.1a'
    )

    app.include_router(user_router)

    return app

# if __name__ == '__main__':
#     app = create_app()

'''
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCySBqHo7cpcfJuoabdKmb5sEJI0NtbVKwbdFrQm96Yq644he7RkcdQSYIZKfm7iIBMyruBX7sJznvSvNgoRBEW9HysasDAhkjNg3EOaec+Fit1SrkdvCRN1I9m4udScz3bQmJflgjyFitRIC4ljngsrDAF2Gat9I9M1wriNHX6SgnJglKT/tauMuJqaytCorwenl2KNKCnVf+ksNX8idG8w9YbbjmpvV3R+tnt7v6NPE9OKulHWUKh7FXCUmGFzHVbUKDlzoE6gzzEoyQ9bFiGF2kORkI8altovmrdSWdZyabIWOKYjWHwC1NvhVCor/cOXdk37tRlHfoBaJR+RqzssVd9N6ShwLm3tTrHcc9XoafCZ44EJ+yc5SyznDxTjaJXzGkeByTWTWs/JeTBhI0oaldZ84tRkh2b8hl6/bzhO1Klo4fppb4p5Pa1YwNL6vji8Jt9pykyn7nujLG8PQeJU0sF2CLF63DtAbGOAJn6tsZ5h3tnEphVohsuzis01o0= anastation@ZenBook-of-Rivia
'''