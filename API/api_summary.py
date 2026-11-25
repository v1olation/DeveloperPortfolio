"""Summarize the saved JSONPlaceholder users response."""
import json
from pathlib import Path


def main() -> None:
    data_path = Path(__file__).with_name("users.json")
    with data_path.open(encoding="utf-8") as response_file:
        users = json.load(response_file)

    print(f"Users in saved API response: {len(users)}")
    for user in users:
        city = user.get("address", {}).get("city", "Unknown")
        print(f"{user['name']} — {city}")


if __name__ == "__main__":
    main()
