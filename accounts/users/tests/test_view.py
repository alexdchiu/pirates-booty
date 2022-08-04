from django.test import TestCase


class FeatureTests(TestCase):
    def test_black_installed(self):
        try:
            import black
        except ModuleNotFoundError:
            self.fail("Could not find 'black' installed in the environment")

    def test_flake8_installed(self):
        try:
            import flake8
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
