#!/usr/bin/python3
"""Module to query reddit Api endpoint"""

import requests


def top_ten(subreddit):
    """
    function to query reddit endpoint
    """

    new_url = f'https://www.reddit.com/r/{subreddit}/hot.json'
    headers = {'User-Agent': 'Eric O'}
    param = {'limit': 10}

    try:
        response = requests.get(new_url, headers=headers, params=param)
        if response.status_code == 400:
            return 0
        # print("Data is : {}".format(response.json()['data']['children']))
        data_response = response.json()['data']
        for item in data_response['children']:
            print(item['data']['title'])
    except Exception as e:
        print(e)


if __name__ == '__main__':
    top_ten(subreddit='programming')
