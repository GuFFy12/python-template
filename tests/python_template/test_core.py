import pytest

from python_template.core import process_data


def test_process_data(caplog: pytest.LogCaptureFixture, sample_data: str) -> None:
    """Test the core logic processing with automated logging configuration."""
    result = process_data(sample_data)

    assert result == sample_data.upper()
    assert len(caplog.records) == 1
    assert caplog.records[0].levelname == "INFO"
    assert caplog.records[0].message == f"Processing data: {sample_data}"
