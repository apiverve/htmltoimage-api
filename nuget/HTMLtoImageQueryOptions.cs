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
        /// HTML code to convert
        /// </summary>
        [JsonProperty("html")]
        public string Html { get; set; }

        /// <summary>
        /// Image width in pixels
        /// </summary>
        [JsonProperty("width")]
        public string Width { get; set; }

        /// <summary>
        /// Image height in pixels
        /// </summary>
        [JsonProperty("height")]
        public string Height { get; set; }

        /// <summary>
        /// Output image format
        /// </summary>
        [JsonProperty("format")]
        public string Format { get; set; }
    }
}
