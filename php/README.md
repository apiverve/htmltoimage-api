# HTML to Image API - PHP Package

HTML to Image is an HTML to image API that renders HTML code into a high-quality PNG image. Paid plans add custom dimensions and JPEG or WebP output.

## Installation

Install via Composer:

```bash
composer require apiverve/htmltoimage
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Htmltoimage\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'html' => '<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>',
    'width' => 800,
    'height' => 600,
    'format' => 'png'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Htmltoimage\Client;
use APIVerve\Htmltoimage\Exceptions\APIException;
use APIVerve\Htmltoimage\Exceptions\ValidationException;

try {
    $response = $client->execute(['html' => '<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>', 'width' => 800, 'height' => 600, 'format' => 'png']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/htmltoimage?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/htmltoimage?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/htmltoimage?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
