/// Response models for the HTML to Image API.

/// API Response wrapper.
class HtmltoimageResponse {
  final String status;
  final dynamic error;
  final HtmltoimageData? data;

  HtmltoimageResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HtmltoimageResponse.fromJson(Map<String, dynamic> json) => HtmltoimageResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HtmltoimageData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the HTML to Image API.

class HtmltoimageData {
  String? imageName;
  String? format;
  String? downloadURL;
  int? expires;
  int? htmlLength;
  HtmltoimageDataDimensions? dimensions;

  HtmltoimageData({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
    this.htmlLength,
    this.dimensions,
  });

  factory HtmltoimageData.fromJson(Map<String, dynamic> json) => HtmltoimageData(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
      htmlLength: json['htmlLength'],
      dimensions: json['dimensions'] != null ? HtmltoimageDataDimensions.fromJson(json['dimensions']) : null,
    );
}

class HtmltoimageDataDimensions {
  int? width;
  int? height;

  HtmltoimageDataDimensions({
    this.width,
    this.height,
  });

  factory HtmltoimageDataDimensions.fromJson(Map<String, dynamic> json) => HtmltoimageDataDimensions(
      width: json['width'],
      height: json['height'],
    );
}

class HtmltoimageRequest {
  String html;
  int? width;
  int? height;
  String? format;

  HtmltoimageRequest({
    required this.html,
    this.width,
    this.height,
    this.format,
  });

  Map<String, dynamic> toJson() => {
      'html': html,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (format != null) 'format': format,
    };
}
