# HTML to Image API

HTML to Image is an HTML to image API that renders HTML code into a high-quality PNG image. Paid plans add custom dimensions and JPEG or WebP output.

[![npm version](https://img.shields.io/npm/v/@apiverve/htmltoimage.svg)](https://www.npmjs.com/package/@apiverve/htmltoimage)

This is a JavaScript wrapper for the [HTML to Image API](https://apiverve.com/marketplace/htmltoimage?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/htmltoimage
```

Using yarn:
```shell
yarn add @apiverve/htmltoimage
```

---

## Configuration

Before using the HTML to Image API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The HTML to Image API documentation is found here: [https://docs.apiverve.com/ref/htmltoimage](https://docs.apiverve.com/ref/htmltoimage?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const htmltoimageAPI = require('@apiverve/htmltoimage');
const api = new htmltoimageAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>",
  "width": 800,
  "height": 600,
  "format": "png"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>",
  "width": 800,
  "height": 600,
  "format": "png"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>",
  "width": 800,
  "height": 600,
  "format": "png"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "width": 800,
    "height": 600,
    "format": "png",
    "imageName": "bf3d3d67-bc6e-477b-a916-560b895f8091.png",
    "expires": 1789676439207,
    "downloadURL": "https://storage.googleapis.com/apiverve/APIData/htmltoimage/bf3d3d67-bc6e-477b-a916-560b895f8091.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1789676439&Signature=Uw7imp8TVuygEgWhdLAmK8%2Byk0NoZmtdLEX9MrDHjlWDYyB28y7zbCxVuD%2BF%2F6Iij5zi%2FhvDoJnuhNT6a2Yl85gw5nWGt750Ai4gup46dQQt0vrsUpD99IPTfTh21DWd4WqE7VCWlIlou7WwNUn620WgWM3ScGi13dCB81Qyb4WuxrdcNal8WrUYX9nZ12h%2B7BZs65Tyw0V4StbvsYxXKqySkF4aQ8J1QbdhUny9WyptE3qNT%2FyM4m2%2F%2FJAOq32bQsSWj8%2BycWEhtifIgpJe4LTBBeqtHBePrIQSrYNRdOwhjaTzj%2BShSeox5wPztiaoRyi1DGIx4FIIstS2dAdQ6Q%3D%3D",
    "htmlLength": 197
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
