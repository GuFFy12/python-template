import argparse
import logging
import sys

from python_template.core import process_data

logger = logging.getLogger(__name__)


def main(argv: list[str] | None = None) -> int:
    logging.basicConfig(
        level=logging.INFO,
        stream=sys.stdout,
    )
    parser = argparse.ArgumentParser(description="Python Template CLI")
    parser.add_argument("data", help="Data to process")

    args = parser.parse_args(argv)

    result = process_data(args.data)
    logger.info(result)

    return 0


if __name__ == "__main__":
    sys.exit(main())
