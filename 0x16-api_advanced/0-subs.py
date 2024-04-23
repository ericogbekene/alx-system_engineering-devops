#!/usr/bin/python3
""" Module to query reddit Api endpoint"""

import requests


def number_of_subscribers(subreddit):
    """
    function to query reddit endpoint
    """

    new_url = f'https://www.reddit.com/r/{subreddit}/about.json'
    headers = {'User-Agent': 'Eric O'}

    try:
        response = requests.get(new_url, headers=headers)
        if response.status_code == 400:
            return 0
        # print("Data is : {}".format(response.json()))
        count = response.json()['data']['subscribers']
        return (count)
    except Exception as e:
        print(e)
