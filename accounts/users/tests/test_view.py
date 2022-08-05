from django.test import TestCase


class FeatureTests(TestCase):
    def test_black_installed(self):
        try:
            import black  # noqa: F401
        except ModuleNotFoundError:
            self.fail("Could not find 'black' installed in the environment")

    def test_flake8_installed(self):
        try:
            import flake8  # noqa: F401
        except ModuleNotFoundError:
            self.fail("Could not find 'flake8' installed in the environment")

    def test_users_model_exists(self):
        try:
            from users.models import User  # noqa: F401
        except ModuleNotFoundError:
            self.fail("could not find 'users.models.User")

    def test_users_app_installed(self):
        try:
            from accounts.settings import INSTALLED_APPS  # noqa: F401

            self.assertIn("users.apps.UsersConfig", INSTALLED_APPS)
        except ModuleNotFoundError:
            self.fail("Could not find 'users' installed in 'accounts'")

    def test_completed_workout_model_exists(self):
        try:
            from users.models import Completed_Workout  # noqa: F401
        except ModuleNotFoundError:
            self.fail("could not find 'users.models.Completed_Workout")

    def test_completed_workout_model_has_integer_field(self):
        try:
            from users.models import models, Completed_Workout

            workout_id = Completed_Workout.workout_id
            self.assertIsInstance(
                workout_id.field,
                models.IntegerField,
                msg="Completed_Workout.workout_id should be an integer field",
            )
        except ModuleNotFoundError:
            self.fail("Could not find 'completed_workout.models'")
        except ImportError:
            self.fail("Could not find 'completed_workout.models.Completed_Workout'")
        except AttributeError:
            self.fail("Could not find 'Completed_Workout.workout_id'")

    def test_completed_workout_model_has_user_related_name_of_users(self):
        try:
            from users.models import models, Completed_Workout  # noqa: F401

            user = Completed_Workout.user
            self.assertEqual(
                user.field.related_query_name(),
                "users",
                msg="Completed_Workout.users should have a related name of 'users'",
            )
        except ModuleNotFoundError:
            self.fail("Could not find 'Completed_Workout.models'")
        except ImportError:
            self.fail("Could not find 'users.models.Completed_Workout'")
        except AttributeError:
            self.fail("Could not find 'Completed_Workout.user'")
