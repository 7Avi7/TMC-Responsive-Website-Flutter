// To parse this JSON data, do
//
//     final ipTelephonyServiceModel = ipTelephonyServiceModelFromJson(jsonString);

import 'dart:convert';

IpTelephonyServiceModel ipTelephonyServiceModelFromJson(String str) =>
    IpTelephonyServiceModel.fromJson(json.decode(str));

String ipTelephonyServiceModelToJson(IpTelephonyServiceModel data) =>
    json.encode(data.toJson());

class IpTelephonyServiceModel {
  Data? data;
  Meta? meta;

  IpTelephonyServiceModel({
    this.data,
    this.meta,
  });

  factory IpTelephonyServiceModel.fromJson(Map<String, dynamic> json) =>
      IpTelephonyServiceModel(
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
  Attributes? attributes;

  Data({
    this.id,
    this.attributes,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : Attributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class Attributes {
  String? slug;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  dynamic footer;
  Hero? hero;
  Feature? feature;
  List<Feature>? package;

  Attributes({
    this.slug,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.footer,
    this.hero,
    this.feature,
    this.package,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        slug: json["slug"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        footer: json["footer"],
        hero: json["hero"] == null ? null : Hero.fromJson(json["hero"]),
        feature:
            json["feature"] == null ? null : Feature.fromJson(json["feature"]),
        package: json["package"] == null
            ? []
            : List<Feature>.from(
                json["package"]!.map((x) => Feature.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "footer": footer,
        "hero": hero?.toJson(),
        "feature": feature?.toJson(),
        "package": package == null
            ? []
            : List<dynamic>.from(package!.map((x) => x.toJson())),
      };
}

class Feature {
  int? id;
  String? heading;
  List<ListElement>? list;

  Feature({
    this.id,
    this.heading,
    this.list,
  });

  factory Feature.fromJson(Map<String, dynamic> json) => Feature(
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

class Meta {
  Meta();

  factory Meta.fromJson(Map<String, dynamic> json) => Meta();

  Map<String, dynamic> toJson() => {};
}
