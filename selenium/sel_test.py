# Write a Python script that executes the API calls for you. The script should do the following:
# Given a book's ISBN number, print the title of that book to the screen. ISBN number should be variable.
# https://www.googleapis.com/books/v1/volumes?q=9780884271956+isbn

import requests
import json

# create variables
api_url = "https://www.googleapis.com/books/v1/volumes?q=isbn+"
isbn = ("9780884271956").strip()

# send request 
response = requests.get(api_url+isbn)

# get JSON response
get_data = response.json()

# select info first result index 0!
volume_info = get_data["items"][0]["volumeInfo"]

# print variables
print(f"\nTitle: {volume_info['title']}")
print(f"Isbn: {isbn}")