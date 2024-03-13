import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  double _total_price = 0.0;
  double get total_price => _total_price;

  void _setItems() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('Cart_Item', _counter);
    pref.setDouble('total_Item', _total_price);
    notifyListeners();
  }

  void _getPrefrence() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    _counter = pref.getInt('Cart_Item') ?? 0;
    _total_price = pref.getDouble('total_Item') ?? 0;
    notifyListeners();
  }

  void addCounter() {
    _counter++;
    _setItems();
    notifyListeners();
  }

  void removeCounter() {
    _counter--;
    _setItems();
    notifyListeners();
  }

  int getCounter() {
    _getPrefrence();
    return _counter;
  }

  void addTotalPrice(double productPrice) {
    _total_price = _total_price + productPrice;
    _setItems();
    notifyListeners();
  }

  void removeTotalPrice(double productPrice) {
    _total_price = _total_price - productPrice;
    _setItems();
    notifyListeners();
  }

  double totatPrice() {
    _getPrefrence();
    return _total_price;
  }
}
