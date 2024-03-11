// To parse this JSON data, do
//
//     final securitySolutionsModel = securitySolutionsModelFromJson(jsonString);

import 'dart:convert';

SecuritySolutionsModel securitySolutionsModelFromJson(String str) =>
    SecuritySolutionsModel.fromJson(json.decode(str));

String securitySolutionsModelToJson(SecuritySolutionsModel data) =>
    json.encode(data.toJson());

class SecuritySolutionsModel {
  Data? data;
  Meta? meta;

  SecuritySolutionsModel({
    this.data,
    this.meta,
  });

  factory SecuritySolutionsModel.fromJson(Map<String, dynamic> json) =>
      SecuritySolutionsModel(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "meta": meta?.toJson(),
      };
}

class Data {
  int? id;
  DataAttributes? attributes;

  Data({
    this.id,
    this.attributes,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : DataAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class DataAttributes {
  String? slug;
  String? footer;
  Hero? hero;
  ListItem? listItem;
  Images? images;

  DataAttributes({
    this.slug,
    this.footer,
    this.hero,
    this.listItem,
    this.images,
  });

  factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
        slug: json["slug"],
        footer: json["footer"],
        hero: json["hero"] == null ? null : Hero.fromJson(json["hero"]),
        listItem: json["listItem"] == null
            ? null
            : ListItem.fromJson(json["listItem"]),
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "footer": footer,
        "hero": hero?.toJson(),
        "listItem": listItem?.toJson(),
        "images": images?.toJson(),
      };
}

class Hero {
  int? id;
  String? heading;
  String? subheading;

  Hero({
    this.id,
    this.heading,
    this.subheading,
  });

  factory Hero.fromJson(Map<String, dynamic> json) => Hero(
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

class Images {
  List<Datum>? data;

  Images({
    this.data,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  int? id;
  DatumAttributes? attributes;

  Datum({
    this.id,
    this.attributes,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : DatumAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class DatumAttributes {
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

  DatumAttributes({
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

  factory DatumAttributes.fromJson(Map<String, dynamic> json) =>
      DatumAttributes(
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

class ListItem {
  int? id;
  String? heading;
  List<ListElement>? list;

  ListItem({
    this.id,
    this.heading,
    this.list,
  });

  factory ListItem.fromJson(Map<String, dynamic> json) => ListItem(
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

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
