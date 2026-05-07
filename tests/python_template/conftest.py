import logging

import pytest


@pytest.fixture(autouse=True)
def configure_logging(caplog: pytest.LogCaptureFixture) -> None:
    """Automatically set log level for all tests to avoid repetitive with-statements."""
    caplog.set_level(logging.INFO)


@pytest.fixture
def sample_data() -> str:
    """Return a standard string for testing core processing logic."""
    return "hello-world"
