import 'package:equatable/equatable.dart';

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    try {
      return AccessInfo(
        country: json['country'] ?? '',
        viewability: json['viewability'] ?? '',
        embeddable: json['embeddable'] ?? false,
        publicDomain: json['publicDomain'] ?? false,
        textToSpeechPermission: json['textToSpeechPermission'] ?? '',
        epub: json['epub'] != null
            ? Epub.fromJson(json['epub'] as Map<String, dynamic>)
            : null,
        pdf: json['pdf'] != null
            ? Pdf.fromJson(json['pdf'] as Map<String, dynamic>)
            : null,
        webReaderLink: json['webReaderLink'] ?? '',
        accessViewStatus: json['accessViewStatus'] ?? '',
        quoteSharingAllowed: json['quoteSharingAllowed'] ?? false,
      );
    } catch (e) {
      print('Error parsing AccessInfo: $e');
      return const AccessInfo();
    }
  }
  Map<String, dynamic> toJson() => {};

  @override
  List<Object?> get props => [
        country,
        viewability,
        embeddable,
        publicDomain,
        textToSpeechPermission,
        epub,
        pdf,
        webReaderLink,
        accessViewStatus,
        quoteSharingAllowed,
      ];
}

class Epub extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const Epub({this.isAvailable, this.acsTokenLink});

  factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'] ?? false,
      acsTokenLink: json['acsTokenLink'] ?? '',
    );
  }

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}

class Pdf extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromJson(Map<String, dynamic> json) {
    return Pdf(
      isAvailable: json['isAvailable'] ?? false,
      acsTokenLink: json['acsTokenLink'] ?? '',
    );
  }

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}
