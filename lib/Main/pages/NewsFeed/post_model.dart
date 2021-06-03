import 'package:flutter/material.dart';

class PostModel {
  String title;
  String imageUrl;
  String user;
  String content;

  PostModel(Map<String, dynamic> parsedJson) {
    title = parsedJson['title'];
    imageUrl = parsedJson['image'];
    content = parsedJson['content'];
  }

  String toString() {
    return title;
  }
}