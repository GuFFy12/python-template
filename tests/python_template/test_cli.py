import logging

from python_template.cli import main


def test_cli_main(caplog):
    """Test the CLI entry point."""
    with caplog.at_level(logging.INFO):
        exit_code = main(["test-data"])

    assert exit_code == 0
    assert any(record.message == "TEST-DATA" and record.levelname == "INFO" for record in caplog.records)
