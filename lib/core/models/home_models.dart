// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  List<HomeModelDatum>? data;
  Meta? meta;

  HomeModel({
    this.data,
    this.meta,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        data: json["data"] == null
            ? []
            : List<HomeModelDatum>.from(
                json["data"]!.map((x) => HomeModelDatum.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class HomeModelDatum {
  int? id;
  PurpleAttributes? attributes;

  HomeModelDatum({
    this.id,
    this.attributes,
  });

  factory HomeModelDatum.fromJson(Map<String, dynamic> json) => HomeModelDatum(
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
  String? heading;
  String? footer;
  Hero? hero;
  Content? content;
  List<Hero>? card;
  Hero? hero1;
  Image? image;

  PurpleAttributes({
    this.heading,
    this.footer,
    this.hero,
    this.content,
    this.card,
    this.hero1,
    this.image,
  });

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) =>
      PurpleAttributes(
        heading: json["heading"],
        footer: json["footer"],
        hero: json["hero"] == null ? null : Hero.fromJson(json["hero"]),
        content:
            json["content"] == null ? null : Content.fromJson(json["content"]),
        card: json["card"] == null
            ? []
            : List<Hero>.from(json["card"]!.map((x) => Hero.fromJson(x))),
        hero1: json["hero1"] == null ? null : Hero.fromJson(json["hero1"]),
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "heading": heading,
        "footer": footer,
        "hero": hero?.toJson(),
        "content": content?.toJson(),
        "card": card == null
            ? []
            : List<dynamic>.from(card!.map((x) => x.toJson())),
        "hero1": hero1?.toJson(),
        "image": image?.toJson(),
      };
}

class Hero {
  int? id;
  String? title;
  String? subtitle;
  String? button;

  Hero({
    this.id,
    this.title,
    this.subtitle,
    this.button,
  });

  factory Hero.fromJson(Map<String, dynamic> json) => Hero(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        button: json["button"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "button": button,
      };
}

class Content {
  int? id;
  String? heading;
  String? subheading;

  Content({
    this.id,
    this.heading,
    this.subheading,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        id: json["id"],
        heading: json["heading"],
        subheading: json["subheading"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "heading": heading,
        "subheading": subheading,
      };
}

class Image {
  List<ImageDatum>? data;

  Image({
    this.data,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        data: json["data"] == null
            ? []
            : List<ImageDatum>.from(
                json["data"]!.map((x) => ImageDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class ImageDatum {
  int? id;
  FluffyAttributes? attributes;

  ImageDatum({
    this.id,
    this.attributes,
  });

  factory ImageDatum.fromJson(Map<String, dynamic> json) => ImageDatum(
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
  dynamic formats;
  String? hash;
  Ext? ext;
  Mime? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  Provider? provider;
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
        formats: json["formats"],
        hash: json["hash"],
        ext: extValues.map[json["ext"]]!,
        mime: mimeValues.map[json["mime"]]!,
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: providerValues.map[json["provider"]]!,
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
        "formats": formats,
        "hash": hash,
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": providerValues.reverse[provider],
        "provider_metadata": providerMetadata,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

enum Ext { JPG, PNG }

final extValues = EnumValues({".jpg": Ext.JPG, ".png": Ext.PNG});

enum Mime { IMAGE_JPEG, IMAGE_PNG }

final mimeValues =
    EnumValues({"image/jpeg": Mime.IMAGE_JPEG, "image/png": Mime.IMAGE_PNG});

enum Provider { LOCAL }

final providerValues = EnumValues({"local": Provider.LOCAL});

class Meta {
  Pagination? pagination;

  Meta({
    this.pagination,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
      };
}

class Pagination {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  Pagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
