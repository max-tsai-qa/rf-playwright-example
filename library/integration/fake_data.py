from datetime import datetime


def create_fake_item_name() -> str:
    timestamp = datetime.timestamp(datetime.now())
    return f'item_{timestamp}'