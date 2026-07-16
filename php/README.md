# HTML to Image API - PHP Package

HTML to Image converts HTML code into high-quality images with customizable dimensions and formats including PNG, JPEG, and WebP.

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
    "imageName": "79c8416d-8096-4524-adea-a948eb69a21e.png",
    "format": ".png",
    "downloadURL": "https://storage.googleapis.com/apiverve/APIData/htmltoimage/79c8416d-8096-4524-adea-a948eb69a21e.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010253&Signature=JEtYi%2BDdd0thnSSDWLXWCAbxVJAt6gu8khy9B0UCZSM0uXYrHLv%2F07Ht97jN%2B%2BvzQg0yP0PVUzqwrfkoC4pNEUXLzdP743iCmBEsaQqtstK5OkZR0a%2F%2FSt6UmyxQ4eWCxS7DR2pY3yBYvslzzjlBgF9ASfymgzztwvpowPR7QttziwLMzJOX5aVgstMDfEuOthcCPwRsv8lVShYAQGBYk2ZVCxIQ8HrRi38VQlEG30w%2Fgh2Lo7Xd4%2FaAuvFyG3atL4PkScoemYeHNAws4EcdxDFY69jXpffs6BHrc2OQ7U9rCC7s6p1B%2BUT7ODFFheq432OXb%2BI2p3wfOGJB4dtoQQ%3D%3D",
    "expires": 1766010253596,
    "htmlLength": 197,
    "dimensions": {
      "width": 800,
      "height": 600
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/htmltoimage?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://htmltoimage.apiverve.com?utm_source=php&utm_medium=readme](https://htmltoimage.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
