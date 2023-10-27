// To parse this JSON data, do
//
//     final ProductModel = ProductModelFromJson(jsonString);

import 'dart:convert';
import 'dart:ffi';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  String code;
  int total;
  int offset;
  List<Item> items;

  ProductModel({
    required this.code,
    required this.total,
    required this.offset,
    required this.items,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        code: json["code"],
        total: json["total"],
        offset: json["offset"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "total": total,
        "offset": offset,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  String ean;
  String title;
  String description;
  String upc;
  String brand;
  String model;
  String color;
  String size;
  String dimension;
  String weight;
  String category;
  String currency;
  int lowestRecordedPrice;
  String highestRecordedPrice;
  List<String> images;
  List<Offer> offers;

  Item({
    required this.ean,
    required this.title,
    required this.description,
    required this.upc,
    required this.brand,
    required this.model,
    required this.color,
    required this.size,
    required this.dimension,
    required this.weight,
    required this.category,
    required this.currency,
    required this.lowestRecordedPrice,
    required this.highestRecordedPrice,
    required this.images,
    required this.offers,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        ean: json["ean"],
        title: json["title"],
        description: json["description"],
        upc: json["upc"],
        brand: json["brand"],
        model: json["model"],
        color: json["color"],
        size: json["size"],
        dimension: json["dimension"],
        weight: json["weight"],
        category: json["category"],
        currency: json["currency"],
        lowestRecordedPrice: json["lowest_recorded_price"],
        highestRecordedPrice: json["highest_recorded_price"],
        images: List<String>.from(json["images"].map((x) => x)),
        offers: List<Offer>.from(json["offers"].map((x) => Offer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ean": ean,
        "title": title,
        "description": description,
        "upc": upc,
        "brand": brand,
        "model": model,
        "color": color,
        "size": size,
        "dimension": dimension,
        "weight": weight,
        "category": category,
        "currency": currency,
        "lowest_recorded_price": lowestRecordedPrice,
        "highest_recorded_price": highestRecordedPrice,
        "images": List<dynamic>.from(images.map((x) => x)),
        "offers": List<dynamic>.from(offers.map((x) => x.toJson())),
      };
}

class Offer {
  String merchant;
  String domain;
  String title;
  String currency;
  String listPrice;
  String price;
  String shipping;
  String condition;
  String availability;
  String link;
  int updatedT;

  Offer({
    required this.merchant,
    required this.domain,
    required this.title,
    required this.currency,
    required this.listPrice,
    required this.price,
    required this.shipping,
    required this.condition,
    required this.availability,
    required this.link,
    required this.updatedT,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        merchant: json["merchant"],
        domain: json["domain"],
        title: json["title"],
        currency: json["currency"],
        listPrice: json["list_price"].toString(),
        price: json["price"].toString(),
        shipping: json["shipping"],
        condition: json["condition"],
        availability: json["availability"],
        link: json["link"],
        updatedT: json["updated_t"],
      );

  Map<String, dynamic> toJson() => {
        "merchant": merchant,
        "domain": domain,
        "title": title,
        "currency": currency,
        "list_price": listPrice,
        "price": price,
        "shipping": shipping,
        "condition": condition,
        "availability": availability,
        "link": link,
        "updated_t": updatedT,
      };
}
