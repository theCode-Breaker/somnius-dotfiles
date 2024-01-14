#!/usr/bin/env python3

from dotenv import load_dotenv
from requests import Request, Session
from requests.exceptions import ConnectionError, Timeout, TooManyRedirects
import json
import os


load_dotenv()
api_key = os.getenv("CMC_KEY")

url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest'
parameters = {
  'limit':'1'
}
headers = {
  'Accepts': 'application/json',
  'X-CMC_PRO_API_KEY': api_key,
}

session = Session()
session.headers.update(headers)

try:
  response = session.get(url, params=parameters)
  resp = json.loads(response.text)
  raw_p = resp["data"][0]["quote"]["USD"]["price"]
  round_p = int(round(raw_p))
  format_p = ('{:,}'.format(round_p))
  price = str(format_p)
  print(price)
except (ConnectionError, Timeout, TooManyRedirects) as e:
  print("...err")
