// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(title,
            textAlign: TextAlign.left,
          ),
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
