from fastapi import FastAPI
from routers import exercises

# # pool = ConnectionPool(conninfo=os.environ["DATABASE_URL"])

app = FastAPI()

app.include_router(exercises.router)