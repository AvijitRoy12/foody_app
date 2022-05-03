// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  ProductOverviewScreen({Key? key}) : super(key: key);

  final List<Product> loadedProducts = [
    Product(
        id: 'p1',
        title: 'Pizza',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'https://www.edeka.de/media/01-rezeptbilder/rezeptbilder-i-p/rez-edeka-pizza-prosciutto-rezept-i-p.jpg?imwidth=960&imdensity=1',
        isFavorite: true),
    Product(
        id: 'p2',
        title: 'Salzige',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'https://www.lekkerland.de/wp-content/uploads/iStock-1192712284.jpg',
        isFavorite: true),
    Product(
        id: 'p3',
        title: 'Potato',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'https://media.istockphoto.com/photos/salty-snacks-picture-id513048228',
        isFavorite: true),
    Product(
        id: 'p4',
        title: 'Yogurt',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'https://media01.stockfood.com/largepreviews/NTM3NDAzNg==/00173356-Teller-mit-verschiedenen-salzigen-Snacks-Knabberzeug.jpg',
        isFavorite: true),
    Product(
        id: 'p5',
        title: 'Fruits',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'https://static.onecms.io/wp-content/uploads/sites/43/2020/04/10/FeatureHealthySnacks-photo-by-mackenzie-schieck-square.jpg',
        isFavorite: true),
    Product(
        id: 'p6',
        title: 'Carrots',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'https://www.mafowerk.de/wp-content/uploads/2020/02/nhalt_Ergebnisse-mafowerk-Consumer-Insights-Healthy-Snacks-2019-1-pm-1000x563.jpg',
        isFavorite: true),
    Product(
        id: 'p7',
        title: 'Orange',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'http://nurse.plus/wp-content/uploads/2017/08/healthy-food.jpg',
        isFavorite: true),
    Product(
        id: 'p8',
        title: 'Grapes',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'https://medstudentstories.merckmanuals.com/wp-content/uploads/2018/03/snack-box.jpg',
        isFavorite: true),
    Product(
        id: 'p9',
        title: 'Apples',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'https://www.commonwisecare.com/wp-content/uploads/2020/04/Healthy-Snacks-for-Old-People.jpeg',
        isFavorite: true),
    Product(
        id: 'p10',
        title: 'Strawberry',
        description: 'Minimalistic design T shirt',
        price: 5.99,
        imageUrl:
            'http://2.bp.blogspot.com/-WfJ7zv-JNdw/Uj9gRYJ6ejI/AAAAAAAACk8/FkE5bfjpH2g/s1600/Image+5.jpg',
        isFavorite: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: loadedProducts.length,
          itemBuilder: (ctx, i) => ProductItem(
            loadedProducts[i].id,
            loadedProducts[i].title,
            loadedProducts[i].imageUrl,
          ),
        ),
      ),
    );
  }
}
