// To parse this JSON data, do
//
//     final cloudModel = cloudModelFromJson(jsonString);

import 'dart:convert';

CloudModel cloudModelFromJson(String str) =>
    CloudModel.fromJson(json.decode(str));

String cloudModelToJson(CloudModel data) => json.encode(data.toJson());

class CloudModel {
  Data? data;
  Meta? meta;

  CloudModel({
    this.data,
    this.meta,
  });

  factory CloudModel.fromJson(Map<String, dynamic> json) => CloudModel(
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
  List<Element>? hero;
  Content? infrastructures;
  List<Element>? element;
  Content? content;

  Attributes({
    this.slug,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.title,
    this.hero,
    this.infrastructures,
    this.element,
    this.content,
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
        hero: json["hero"] == null
            ? []
            : List<Element>.from(json["hero"]!.map((x) => Element.fromJson(x))),
        infrastructures: json["infrastructures"] == null
            ? null
            : Content.fromJson(json["infrastructures"]),
        element: json["element"] == null
            ? []
            : List<Element>.from(
                json["element"]!.map((x) => Element.fromJson(x))),
        content:
            json["content"] == null ? null : Content.fromJson(json["content"]),
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "title": title,
        "hero": hero == null
            ? []
            : List<dynamic>.from(hero!.map((x) => x.toJson())),
        "infrastructures": infrastructures?.toJson(),
        "element": element == null
            ? []
            : List<dynamic>.from(element!.map((x) => x.toJson())),
        "content": content?.toJson(),
      };
}

class Content {
  int? id;
  String? heading;
  List<ListElement>? list;

  Content({
    this.id,
    this.heading,
    this.list,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
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

class Element {
  int? id;
  String? heading;
  String? subheading;

  Element({
    this.id,
    this.heading,
    this.subheading,
  });

  factory Element.fromJson(Map<String, dynamic> json) => Element(
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
