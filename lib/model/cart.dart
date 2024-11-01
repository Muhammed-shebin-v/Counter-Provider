import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier{
  final List<Products> _items=[];

  List<Products> get items=>_items;

  void add(Product)
}