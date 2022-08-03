from fastapi import FastAPI
from routers import exercises
from fastapi.middleware.cors import CORSMiddleware

# # pool = ConnectionPool(conninfo=os.environ["DATABASE_URL"])

app = FastAPI()


origins = [
    "http://localhost:3000",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(exercises.router)
