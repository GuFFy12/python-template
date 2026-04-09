import logging

logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
logger: logging.Logger = logging.getLogger(__name__)


def main() -> None:
    logger.info("Hello World!")


if __name__ == "__main__":
    main()
