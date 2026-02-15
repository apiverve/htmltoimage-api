# HTML to Image API - Go Client

HTML to Image converts HTML code into high-quality images with customizable dimensions and formats including PNG, JPEG, and WebP.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Go client for the [HTML to Image API](https://htmltoimage.apiverve.com?utm_source=go&utm_medium=readme)

---

## Installation

```bash
go get github.com/apiverve/htmltoimage-api/go
```

---

## Configuration

Before using the HTML to Image API client, you need to obtain your API key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=go&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=go&utm_medium=readme)

The HTML to Image API documentation is found here: [https://docs.apiverve.com/ref/htmltoimage](https://docs.apiverve.com/ref/htmltoimage?utm_source=go&utm_medium=readme)

---

## Usage

```go
package main

import (
    "fmt"
    "log"

    "github.com/apiverve/htmltoimage-api/go"
)

func main() {
    // Create a new client
    client := htmltoimage.NewClient("YOUR_API_KEY")

    // Set up parameters
    params := map[string]interface{}{
        "html": "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>",
        "width": 800,
        "height": 600,
        "format": "png"
    }

    // Make the request
    response, err := client.Execute(params)
    if err != nil {
        log.Fatal(err)
    }

    fmt.Printf("Status: %s\n", response.Status)
    fmt.Printf("Data: %+v\n", response.Data)
}
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=go&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=go&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=go&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=go&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
