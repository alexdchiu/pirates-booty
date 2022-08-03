from django.test import TestCase

# Create your tests here.

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

