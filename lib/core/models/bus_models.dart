// To parse this JSON data, do
//
//     final busModel = busModelFromJson(jsonString);

import 'dart:convert';

BusModel busModelFromJson(String str) => BusModel.fromJson(json.decode(str));

String busModelToJson(BusModel data) => json.encode(data.toJson());

class BusModel {
  Data? data;
  Meta? meta;

  BusModel({
    this.data,
    this.meta,
  });

  factory BusModel.fromJson(Map<String, dynamic> json) => BusModel(
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
  String? title;
  Hero? hero;
  Services? services;

  Attributes({
    this.slug,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.title,
    this.hero,
    this.services,
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
        title: json["title"],
        hero: json["hero"] == null ? null : Hero.fromJson(json["hero"]),
        services: json["services"] == null
            ? null
            : Services.fromJson(json["services"]),
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "title": title,
        "hero": hero?.toJson(),
        "services": services?.toJson(),
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

class Services {
  int? id;
  String? heading;
  List<ListElement>? list;

  Services({
    this.id,
    this.heading,
    this.list,
  });

  factory Services.fromJson(Map<String, dynamic> json) => Services(
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
