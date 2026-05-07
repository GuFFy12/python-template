import logging

logger = logging.getLogger(__name__)


def process_data(data: str) -> str:
    """Core logic to process the input data."""
    logger.info("Processing data: %s", data)
    return data.upper()
