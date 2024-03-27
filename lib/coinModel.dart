import 'dart:ffi';

import 'package:flutter/material.dart';

class Coin {
  Coin({
    required this.name,
    required this.symbol,
    required this.imgUrl,
    required this.price,
    required this.change,
    required this.changePercentage,
  });

  String name;
  String symbol;
  String imgUrl;
  double price;
  double change;
  double changePercentage;

  factory Coin.fromJson(Map<String, dynamic> json) {
  return Coin(
    name: json['name'],
    symbol: json['symbol'],
    imgUrl: json['image'],
    price: (json['current_price'] as num).toDouble(),
    change: (json['price_change_24h'] as num).toDouble(),
    changePercentage: (json['price_change_percentage_24h'] as num).toDouble(),
  );
}
}

List<Coin> coinList = [];
