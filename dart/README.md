# HTML to Image API - Dart/Flutter Client

HTML to Image converts HTML code into high-quality images with customizable dimensions and formats including PNG, JPEG, and WebP.

[![pub package](https://img.shields.io/pub/v/apiverve_htmltoimage.svg)](https://pub.dev/packages/apiverve_htmltoimage)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [HTML to Image API](https://htmltoimage.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_htmltoimage: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_htmltoimage/apiverve_htmltoimage.dart';

void main() async {
  final client = HtmltoimageClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'html': '<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>',
      'width': 800,
      'height': 600,
      'format': 'png'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [HTML to Image API](https://htmltoimage.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/htmltoimage](https://docs.apiverve.com/ref/htmltoimage?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
