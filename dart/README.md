# HTML to Image API - Dart/Flutter Client

HTML to Image is an HTML to image API that renders HTML code into a high-quality PNG image. Paid plans add custom dimensions and JPEG or WebP output.

[![pub package](https://img.shields.io/pub/v/apiverve_htmltoimage.svg)](https://pub.dev/packages/apiverve_htmltoimage)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [HTML to Image API](https://apiverve.com/marketplace/htmltoimage?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_htmltoimage: ^1.2.5
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

## API Reference

- **API Home:** [HTML to Image API](https://apiverve.com/marketplace/htmltoimage?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/htmltoimage](https://docs.apiverve.com/ref/htmltoimage?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
