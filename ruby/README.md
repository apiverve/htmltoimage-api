# HTML to Image API - Ruby Gem

HTML to Image is an HTML to image API that renders HTML code into a high-quality PNG image. Paid plans add custom dimensions and JPEG or WebP output.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_htmltoimage'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_htmltoimage
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_htmltoimage'

# Initialize the client
client = APIVerve::Htmltoimage::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  html: "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>",
  width: 800,
  height: 600,
  format: "png"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ html: "<html><head><style>body { font-family: Arial; padding: 20px; } h1 { color: #333; }</style></head><body><h1>Hello World</h1><p>This is a sample HTML document converted to an image.</p></body></html>", width: 800, height: 600, format: "png" })
  puts response["data"]
rescue APIVerve::Htmltoimage::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Htmltoimage::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Htmltoimage::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/htmltoimage?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/htmltoimage?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/htmltoimage?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
