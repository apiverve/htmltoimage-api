HTML to Image API
============

HTML to Image converts HTML code into high-quality images with customizable dimensions and formats including PNG, JPEG, and WebP.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [HTML to Image API](https://htmltoimage.apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-htmltoimage
```

Using `pip3`:

```bash
pip3 install apiverve-htmltoimage
```

---

## Configuration

Before using the htmltoimage API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_htmltoimage.apiClient import HtmltoimageAPIClient

# Initialize the client with your APIVerve API key
api = HtmltoimageAPIClient("[YOUR_API_KEY]")

query = { "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>", "width": 800, "height": 600, "format": "png" }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The HTML to Image API documentation is found here: [https://docs.apiverve.com/ref/htmltoimage](https://docs.apiverve.com/ref/htmltoimage?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_htmltoimage.apiClient import HtmltoimageAPIClient

# Initialize the client with your APIVerve API key
api = HtmltoimageAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>", "width": 800, "height": 600, "format": "png" }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "imageName": "a27f201b-3413-4887-915f-d512d562ce0e.png",
    "format": ".png",
    "downloadURL": "https://storage.googleapis.com/apiverve.appspot.com/htmltoimage/a27f201b-3413-4887-915f-d512d562ce0e.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1764584703&Signature=C%2BWUOxfpzI0%2FzoEM0HjHaZjgQo3kSJJ8%2Fw530d5m2TmWzORT%2BoG%2Bx2WvUCgtDn6QPuuhh2R19Pj5SDvjB9afmsOHpWECxLLMkbirUsYf4k3xgT0wZkCqdWUEgzZWkW2VlIfkC6WWkfih0ea%2FjgNDGbicEHBaz0Dbuv9Lb%2FLiBZV%2FKXNJbn3MJhyh1nRcdJb2KtjLR%2Fp69Tt7aaE7FRRei%2FvbhpdYbqggmf%2FrUsucGaDfLnT1Yi3Gw6qASNLutW3g46cXh5zOHrFvbjjMeYJzJ%2FC1%2F6kk60mv1gVBtRNub9FVRUUfB0HAEjzRS6DXOUKtpyGIRsvcG2PlwQpUMBN1QQ%3D%3D",
    "expires": 1764584703738,
    "htmlLength": 197,
    "dimensions": {
      "width": 800,
      "height": 600
    }
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `HtmltoimageAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_htmltoimage.apiClient import HtmltoimageAPIClient, HtmltoimageAPIClientError

api = HtmltoimageAPIClient("[YOUR_API_KEY]")

query = { "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>", "width": 800, "height": 600, "format": "png" }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except HtmltoimageAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_htmltoimage.apiClient import HtmltoimageAPIClient, HtmltoimageAPIClientError

api = HtmltoimageAPIClient("[YOUR_API_KEY]")

query = { "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>", "width": 800, "height": 600, "format": "png" }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except HtmltoimageAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_htmltoimage.apiClient import HtmltoimageAPIClient, HtmltoimageAPIClientError

query = { "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>", "width": 800, "height": 600, "format": "png" }

# Using context manager ensures proper cleanup
with HtmltoimageAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except HtmltoimageAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_htmltoimage.apiClient import HtmltoimageAPIClient

# Enable debug mode
api = HtmltoimageAPIClient("[YOUR_API_KEY]", debug=True)

query = { "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>", "width": 800, "height": 600, "format": "png" }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_htmltoimage.apiClient import HtmltoimageAPIClient

api = HtmltoimageAPIClient("[YOUR_API_KEY]")

try:
    query = { "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>", "width": 800, "height": 600, "format": "png" }
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
