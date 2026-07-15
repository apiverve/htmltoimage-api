/*
 * HTML to Image API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the HTML to Image API.
 * API Documentation: https://docs.apiverve.com/ref/htmltoimage
 */

using System;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using System.Linq;

namespace APIVerve.Examples
{
    class HTMLtoImageExample
    {
        private static readonly string API_KEY = Environment.GetEnvironmentVariable("APIVERVE_API_KEY") ?? "YOUR_API_KEY_HERE";
        private static readonly string API_URL = "https://api.apiverve.com/v1/htmltoimage";

        /// <summary>
        /// Make a POST request to the HTML to Image API
        /// </summary>
        static async Task<JsonDocument> CallHTMLtoImageAPI()
        {
            try
            {
                using var client = new HttpClient();
                client.DefaultRequestHeaders.Add("x-api-key", API_KEY);

                // Request body
                var requestBody &#x3D; new { html &#x3D; &quot;&lt;html&gt;&lt;head&gt;&lt;style&gt;body { font-family: Arial; padding: 20px; } h1 { color: #333; }&lt;/style&gt;&lt;/head&gt;&lt;body&gt;&lt;h1&gt;Hello World&lt;/h1&gt;&lt;p&gt;This is a sample HTML document converted to an image.&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;&quot;, width &#x3D; 800, height &#x3D; 600, format &#x3D; &quot;png&quot; };

                var jsonContent = JsonSerializer.Serialize(requestBody);
                var content = new StringContent(jsonContent, Encoding.UTF8, "application/json");

                var response = await client.PostAsync(API_URL, content);

                // Check if response is successful
                response.EnsureSuccessStatusCode();

                var responseBody = await response.Content.ReadAsStringAsync();
                var data = JsonDocument.Parse(responseBody);

                // Check API response status
                if (data.RootElement.GetProperty("status").GetString() == "ok")
                {
                    Console.WriteLine("✓ Success!");
                    Console.WriteLine("Response data: " + data.RootElement.GetProperty("data"));
                    return data;
                }
                else
                {
                    var error = data.RootElement.TryGetProperty("error", out var errorProp)
                        ? errorProp.GetString()
                        : "Unknown error";
                    Console.WriteLine($"✗ API Error: {error}");
                    return null;
                }
            }
            catch (HttpRequestException e)
            {
                Console.WriteLine($"✗ Request failed: {e.Message}");
                return null;
            }
        }

        static async Task Main(string[] args)
        {
            Console.WriteLine("📤 Calling HTML to Image API...\n");

            var result = await CallHTMLtoImageAPI();

            if (result != null)
            {
                Console.WriteLine("\n📊 Final Result:");
                Console.WriteLine(result.RootElement.GetProperty("data"));
            }
            else
            {
                Console.WriteLine("\n✗ API call failed");
            }
        }
    }
}
