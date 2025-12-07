import 'package:equatable/equatable.dart';
import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    required this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'] ?? 'No title',
      authors: (json['authors'] as List?)?.map((e) => e.toString()).toList(),
      publisher: json['publisher'] ?? '',
      publishedDate: json['publishedDate'] ?? '',
      description: json['description'] ?? '',
      industryIdentifiers: (json['industryIdentifiers'] as List?)
          ?.map((e) => IndustryIdentifier.fromJson(e))
          .toList(),
      readingModes: json['readingModes'] != null
          ? ReadingModes.fromJson(json['readingModes'])
          : null,
      pageCount: json['pageCount'] ?? 0,
      printType: json['printType'] ?? '',
      categories: (json['categories'] as List?)
          ?.map((e) => e.toString())
          .toList(),
      maturityRating: json['maturityRating'] ?? '',
      allowAnonLogging: json['allowAnonLogging'] ?? false,
      contentVersion: json['contentVersion'] ?? '',
      panelizationSummary: json['panelizationSummary'] != null
          ? PanelizationSummary.fromJson(json['panelizationSummary'])
          : null,
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : ImageLinks(thumbnail: '', smallThumbnail: ''),
      language: json['language'] ?? '',
      previewLink: json['previewLink'] ?? '',
      infoLink: json['infoLink'] ?? '',
      canonicalVolumeLink: json['canonicalVolumeLink'] ?? '',
    );
  }
  Map<String, dynamic> toJson() => {};

  @override
  List<Object?> get props => [
    title,
    authors,
    publisher,
    publishedDate,
    description,
    industryIdentifiers,
    readingModes,
    pageCount,
    printType,
    categories,
    maturityRating,
    allowAnonLogging,
    contentVersion,
    panelizationSummary,
    imageLinks,
    language,
    previewLink,
    infoLink,
    canonicalVolumeLink,
  ];
}
