using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.HTMLtoImage
{
    /// <summary>
    /// Query options for the HTML to Image API
    /// </summary>
    public class HTMLtoImageQueryOptions
    {
        /// <summary>
        /// HTML code to convert (max 500,000 characters)
        /// Example: <html><body><h1>Hello</h1></body></html>
        /// </summary>
        [JsonProperty("html")]
        public string Html { get; set; }

        /// <summary>
        /// Image width in pixels (100-3840)
        /// Example: 1280
        /// </summary>
        [JsonProperty("width")]
        public string Width { get; set; }

        /// <summary>
        /// Image height in pixels (100-2160)
        /// Example: 800
        /// </summary>
        [JsonProperty("height")]
        public string Height { get; set; }

        /// <summary>
        /// Image format: png, jpeg, jpg, webp
        /// Example: png
        /// </summary>
        [JsonProperty("format")]
        public string Format { get; set; }
    }
}
