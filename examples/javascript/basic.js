/**
 * HTML to Image API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the HTML to Image API.
 * API Documentation: https://docs.apiverve.com/ref/htmltoimage
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/htmltoimage';

/**
 * Make a POST request to the HTML to Image API
 */
async function callHTMLtoImageAPI() {
  try {
    // Request body
    const requestBody &#x3D; {
    &quot;html&quot;: &quot;&lt;html&gt;&lt;head&gt;&lt;style&gt;body { font-family: Arial; padding: 20px; } h1 { color: #333; }&lt;/style&gt;&lt;/head&gt;&lt;body&gt;&lt;h1&gt;Hello World&lt;/h1&gt;&lt;p&gt;This is a sample HTML document converted to an image.&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;&quot;,
    &quot;width&quot;: 800,
    &quot;height&quot;: 600,
    &quot;format&quot;: &quot;png&quot;
};

    const response = await fetch(API_URL, {
      method: 'POST',
      headers: {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(requestBody)
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callHTMLtoImageAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
