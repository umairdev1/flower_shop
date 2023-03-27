import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final IconData icon;
  final bool active;

  CategoryModel(
      {required this.title, required this.icon, required this.active});
}
