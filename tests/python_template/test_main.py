import logging

from python_template.main import main


class TestMain:
    """Tests for main function."""

    def test_main_logs_hello_world(self, caplog):
        """Test that main logs the expected hello world message."""
        with caplog.at_level(logging.INFO):
            main()

        assert len(caplog.records) == 1
        assert caplog.records[0].levelname == "INFO"
        assert caplog.records[0].message == "Hello World!"
