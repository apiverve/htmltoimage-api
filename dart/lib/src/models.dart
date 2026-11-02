/// Response models for the HTML to Image API.

/// API Response wrapper.
class HtmltoimageResponse {
  final String status;
  final dynamic error;
  final HtmltoimageData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HtmltoimageResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HtmltoimageResponse.fromJson(Map<String, dynamic> json) => HtmltoimageResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HtmltoimageData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the HTML to Image API.

class HtmltoimageData {
  num? width;
  num? height;
  String? format;
  String? imageName;
  num? expires;
  String? downloadURL;
  num? htmlLength;

  HtmltoimageData({
    this.width,
    this.height,
    this.format,
    this.imageName,
    this.expires,
    this.downloadURL,
    this.htmlLength,
  });

  factory HtmltoimageData.fromJson(Map<String, dynamic> json) => HtmltoimageData(
      width: json['width'],
      height: json['height'],
      format: json['format'],
      imageName: json['imageName'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
      htmlLength: json['htmlLength'],
    );
}

class HtmltoimageRequest {
  String html;
  num? width;
  num? height;
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
