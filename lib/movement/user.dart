import 'package:flutter/material.dart';

class User {
  final String name;
  final List<Address> _addresses = [];
  UniqueKey defaultAddressId; // TODO

  User({this.name});

  void addAddress(Address address) => _addresses.add(address);
  bool removeAddress(Address address) => _addresses.remove(address);
  Address get defaultAddress =>
      _addresses.firstWhere((address) => address.id == defaultAddressId);
}

class Address {
  final UniqueKey _id = UniqueKey();
  final String _data;

  Address(this._data);

  String get data => _data;
  get id => _id;
}

final x = Address('data');
