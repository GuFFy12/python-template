import pytest

from python_template.cli import main


def test_cli_main(caplog: pytest.LogCaptureFixture, sample_data: str) -> None:
    """Test the CLI entry point with sample data fixture."""
    exit_code = main([sample_data])

    assert exit_code == 0
    assert any(record.message == sample_data.upper() and record.levelname == "INFO" for record in caplog.records)


def test_cli_empty_args() -> None:
    """Test the CLI behavior when no arguments are provided."""
    with pytest.raises(SystemExit) as excinfo:
        main([])

    assert excinfo.value.code != 0
