from unittest import TestCase
from users.models import Completed_Workout

class ModelsTest(TestCase):
    def test_completed_workout_model_exists(self):
        try:
            from users.models import Completed_Workout
        except ModuleNotFoundError:
            self.fail("Could not find users.models.Completed_Workout")

