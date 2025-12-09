"""
HTML to Image API - Basic Usage Example

This example demonstrates the basic usage of the HTML to Image API.
API Documentation: https://docs.apiverve.com/ref/htmltoimage
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/htmltoimage'

def call_htmltoimage_api():
    """
    Make a POST request to the HTML to Image API
    """
    try:
        # Request body
        request_body &#x3D; {
    &#x27;html&#x27;: &#x27;&lt;html&gt;&lt;head&gt;&lt;style&gt;body { font-family: Arial; padding: 20px; } h1 { color: #333; }&lt;/style&gt;&lt;/head&gt;&lt;body&gt;&lt;h1&gt;Hello World&lt;/h1&gt;&lt;p&gt;This is a sample HTML document converted to an image.&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;&#x27;,
    &#x27;width&#x27;: 800,
    &#x27;height&#x27;: 600,
    &#x27;format&#x27;: &#x27;png&#x27;
}

        headers = {
            'x-api-key': API_KEY,
            'Content-Type': 'application/json'
        }

        response = requests.post(API_URL, headers=headers, json=request_body)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling HTML to Image API...\n')

    result = call_htmltoimage_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')
