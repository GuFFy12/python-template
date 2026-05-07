import logging

from python_template.core import process_data


def test_process_data(caplog):
    """Test the core logic processing."""
    with caplog.at_level(logging.INFO):
        result = process_data("hello")

    assert result == "HELLO"
    assert len(caplog.records) == 1
    assert caplog.records[0].levelname == "INFO"
    assert caplog.records[0].message == "Processing data: hello"
