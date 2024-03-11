// To parse this JSON data, do
//
//     final productiveOfficeModel = productiveOfficeModelFromJson(jsonString);

import 'dart:convert';

ProductiveOfficeModel productiveOfficeModelFromJson(String str) =>
    ProductiveOfficeModel.fromJson(json.decode(str));

String productiveOfficeModelToJson(ProductiveOfficeModel data) =>
    json.encode(data.toJson());

class ProductiveOfficeModel {
  ProductiveOfficeModelData? data;
  Meta? meta;

  ProductiveOfficeModel({
    this.data,
    this.meta,
  });

  factory ProductiveOfficeModel.fromJson(Map<String, dynamic> json) =>
      ProductiveOfficeModel(
        data: json["data"] == null
            ? null
            : ProductiveOfficeModelData.fromJson(json["data"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "meta": meta?.toJson(),
      };
}

class ProductiveOfficeModelData {
  int? id;
  PurpleAttributes? attributes;

  ProductiveOfficeModelData({
    this.id,
    this.attributes,
  });

  factory ProductiveOfficeModelData.fromJson(Map<String, dynamic> json) =>
      ProductiveOfficeModelData(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : PurpleAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class PurpleAttributes {
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  Hero? hero;
  List<Element>? element;
  List<Hero>? blog;

  PurpleAttributes({
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.hero,
    this.element,
    this.blog,
  });

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) =>
      PurpleAttributes(
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        hero: json["hero"] == null ? null : Hero.fromJson(json["hero"]),
        element: json["element"] == null
            ? []
            : List<Element>.from(
                json["element"]!.map((x) => Element.fromJson(x))),
        blog: json["blog"] == null
            ? []
            : List<Hero>.from(json["blog"]!.map((x) => Hero.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "hero": hero?.toJson(),
        "element": element == null
            ? []
            : List<dynamic>.from(element!.map((x) => x.toJson())),
        "blog": blog == null
            ? []
            : List<dynamic>.from(blog!.map((x) => x.toJson())),
      };
}

class Hero {
  int? id;
  String? heading;
  String? subheading;
  Image? image;

  Hero({
    this.id,
    this.heading,
    this.subheading,
    this.image,
  });

  factory Hero.fromJson(Map<String, dynamic> json) => Hero(
        id: json["id"],
        heading: json["heading"],
        subheading: json["subheading"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "heading": heading,
        "subheading": subheading,
        "image": image?.toJson(),
      };
}

class Image {
  ImageData? data;

  Image({
    this.data,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        data: json["data"] == null ? null : ImageData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class ImageData {
  int? id;
  FluffyAttributes? attributes;

  ImageData({
    this.id,
    this.attributes,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) => ImageData(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : FluffyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class FluffyAttributes {
  String? name;
  dynamic alternativeText;
  dynamic caption;
  int? width;
  int? height;
  Formats? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  dynamic providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  FluffyAttributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) =>
      FluffyAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats:
            json["formats"] == null ? null : Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats?.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class Formats {
  Thumbnail? thumbnail;

  Formats({
    this.thumbnail,
  });

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: json["thumbnail"] == null
            ? null
            : Thumbnail.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail?.toJson(),
      };
}

class Thumbnail {
  String? ext;
  String? url;
  String? hash;
  String? mime;
  String? name;
  dynamic path;
  double? size;
  int? width;
  int? height;

  Thumbnail({
    this.ext,
    this.url,
    this.hash,
    this.mime,
    this.name,
    this.path,
    this.size,
    this.width,
    this.height,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        ext: json["ext"],
        url: json["url"],
        hash: json["hash"],
        mime: json["mime"],
        name: json["name"],
        path: json["path"],
        size: json["size"]?.toDouble(),
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "ext": ext,
        "url": url,
        "hash": hash,
        "mime": mime,
        "name": name,
        "path": path,
        "size": size,
        "width": width,
        "height": height,
      };
}

class Element {
  int? id;
  String? heading;
  List<ListElement>? list;

  Element({
    this.id,
    this.heading,
    this.list,
  });

  factory Element.fromJson(Map<String, dynamic> json) => Element(
        id: json["id"],
        heading: json["heading"],
        list: json["list"] == null
            ? []
            : List<ListElement>.from(
                json["list"]!.map((x) => ListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "heading": heading,
        "list": list == null
            ? []
            : List<dynamic>.from(list!.map((x) => x.toJson())),
      };
}

class ListElement {
  int? id;
  String? item;

  ListElement({
    this.id,
    this.item,
  });

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        id: json["id"],
        item: json["item"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "item": item,
      };
}

class Meta {
  Meta();

  factory Meta.fromJson(Map<String, dynamic> json) => Meta();

  Map<String, dynamic> toJson() => {};
}
