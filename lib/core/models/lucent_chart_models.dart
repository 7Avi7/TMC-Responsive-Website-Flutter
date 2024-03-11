// To parse this JSON data, do
//
//     final lucentChartModel = lucentChartModelFromJson(jsonString);

import 'dart:convert';

LucentChartModel lucentChartModelFromJson(String str) =>
    LucentChartModel.fromJson(json.decode(str));

String lucentChartModelToJson(LucentChartModel data) =>
    json.encode(data.toJson());

class LucentChartModel {
  Data? data;
  Meta? meta;

  LucentChartModel({
    this.data,
    this.meta,
  });

  factory LucentChartModel.fromJson(Map<String, dynamic> json) =>
      LucentChartModel(
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
  PurpleAttributes? attributes;

  Data({
    this.id,
    this.attributes,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
  String? slug;
  String? heading;
  String? conclusionPart;
  String? introductionpart;
  String? footer;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? text;
  Image? image;
  Image? video;
  Element1? element1;
  Element2? element2;
  Logo? logo;
  Element2? refactoryError;
  Element2? example;

  PurpleAttributes({
    this.slug,
    this.heading,
    this.conclusionPart,
    this.introductionpart,
    this.footer,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.text,
    this.image,
    this.video,
    this.element1,
    this.element2,
    this.logo,
    this.refactoryError,
    this.example,
  });

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) =>
      PurpleAttributes(
        slug: json["slug"],
        heading: json["heading"],
        conclusionPart: json["conclusionPart"],
        introductionpart: json["introductionpart"],
        footer: json["footer"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        text: json["text"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        video: json["video"] == null ? null : Image.fromJson(json["video"]),
        element1: json["element1"] == null
            ? null
            : Element1.fromJson(json["element1"]),
        element2: json["element2"] == null
            ? null
            : Element2.fromJson(json["element2"]),
        logo: json["logo"] == null ? null : Logo.fromJson(json["logo"]),
        refactoryError: json["refactoryError"] == null
            ? null
            : Element2.fromJson(json["refactoryError"]),
        example:
            json["example"] == null ? null : Element2.fromJson(json["example"]),
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "heading": heading,
        "conclusionPart": conclusionPart,
        "introductionpart": introductionpart,
        "footer": footer,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "text": text,
        "image": image?.toJson(),
        "video": video?.toJson(),
        "element1": element1?.toJson(),
        "element2": element2?.toJson(),
        "logo": logo?.toJson(),
        "refactoryError": refactoryError?.toJson(),
        "example": example?.toJson(),
      };
}

class Element1 {
  int? id;
  String? heading;
  String? subheading;

  Element1({
    this.id,
    this.heading,
    this.subheading,
  });

  factory Element1.fromJson(Map<String, dynamic> json) => Element1(
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

class Element2 {
  int? id;
  String? heading;
  List<ListElement>? list;

  Element2({
    this.id,
    this.heading,
    this.list,
  });

  factory Element2.fromJson(Map<String, dynamic> json) => Element2(
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

class Image {
  Dat? data;

  Image({
    this.data,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        data: json["data"] == null ? null : Dat.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Dat {
  int? id;
  DatumAttributes? attributes;

  Dat({
    this.id,
    this.attributes,
  });

  factory Dat.fromJson(Map<String, dynamic> json) => Dat(
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
  Formats? formats;
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
        formats:
            json["formats"] == null ? null : Formats.fromJson(json["formats"]),
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
        "formats": formats?.toJson(),
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

enum Ext { JPG, MP4, PNG }

final extValues =
    EnumValues({".jpg": Ext.JPG, ".mp4": Ext.MP4, ".png": Ext.PNG});

class Formats {
  Medium? small;
  Medium? medium;
  Medium? thumbnail;

  Formats({
    this.small,
    this.medium,
    this.thumbnail,
  });

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        small: json["small"] == null ? null : Medium.fromJson(json["small"]),
        medium: json["medium"] == null ? null : Medium.fromJson(json["medium"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : Medium.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "small": small?.toJson(),
        "medium": medium?.toJson(),
        "thumbnail": thumbnail?.toJson(),
      };
}

class Medium {
  Ext? ext;
  String? url;
  String? hash;
  Mime? mime;
  String? name;
  dynamic path;
  double? size;
  int? width;
  int? height;

  Medium({
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

  factory Medium.fromJson(Map<String, dynamic> json) => Medium(
        ext: extValues.map[json["ext"]]!,
        url: json["url"],
        hash: json["hash"],
        mime: mimeValues.map[json["mime"]]!,
        name: json["name"],
        path: json["path"],
        size: json["size"]?.toDouble(),
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "ext": extValues.reverse[ext],
        "url": url,
        "hash": hash,
        "mime": mimeValues.reverse[mime],
        "name": name,
        "path": path,
        "size": size,
        "width": width,
        "height": height,
      };
}

enum Mime { IMAGE_JPEG, IMAGE_PNG, VIDEO_MP4 }

final mimeValues = EnumValues({
  "image/jpeg": Mime.IMAGE_JPEG,
  "image/png": Mime.IMAGE_PNG,
  "video/mp4": Mime.VIDEO_MP4
});

enum Provider { LOCAL }

final providerValues = EnumValues({"local": Provider.LOCAL});

class Logo {
  List<Dat>? data;

  Logo({
    this.data,
  });

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        data: json["data"] == null
            ? []
            : List<Dat>.from(json["data"]!.map((x) => Dat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
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
