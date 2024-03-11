// To parse this JSON data, do
//
//     final emailTModel = emailTModelFromJson(jsonString);

import 'dart:convert';

EmailTModel emailTModelFromJson(String str) =>
    EmailTModel.fromJson(json.decode(str));

String emailTModelToJson(EmailTModel data) => json.encode(data.toJson());

class EmailTModel {
  Data? data;
  Meta? meta;

  EmailTModel({
    this.data,
    this.meta,
  });

  factory EmailTModel.fromJson(Map<String, dynamic> json) => EmailTModel(
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
  ManagementItem? managementItem;
  Hero? service;
  List<ManagementItem>? content;

  Attributes({
    this.slug,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.title,
    this.hero,
    this.managementItem,
    this.service,
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
        hero: json["hero"] == null ? null : Hero.fromJson(json["hero"]),
        managementItem: json["managementItem"] == null
            ? null
            : ManagementItem.fromJson(json["managementItem"]),
        service:
            json["service"] == null ? null : Hero.fromJson(json["service"]),
        content: json["content"] == null
            ? []
            : List<ManagementItem>.from(
                json["content"]!.map((x) => ManagementItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "title": title,
        "hero": hero?.toJson(),
        "managementItem": managementItem?.toJson(),
        "service": service?.toJson(),
        "content": content == null
            ? []
            : List<dynamic>.from(content!.map((x) => x.toJson())),
      };
}

class ManagementItem {
  int? id;
  String? heading;
  List<ListElement>? list;

  ManagementItem({
    this.id,
    this.heading,
    this.list,
  });

  factory ManagementItem.fromJson(Map<String, dynamic> json) => ManagementItem(
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
