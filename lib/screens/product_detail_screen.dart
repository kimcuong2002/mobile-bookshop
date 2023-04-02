import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        AppBar,
        BoxFit,
        BuildContext,
        Colors,
        Column,
        Container,
        EdgeInsets,
        Icons,
        Image,
        ModalRoute,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Widget;
import 'package:flutter/src/foundation/key.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  //
  // const ProductDetailScreen(this.title, this.price);
  static const routeName = '/product-detail';
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;

    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              loadedProduct.title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${loadedProduct.price}',
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.grey,
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            const Text('About the author',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                loadedProduct.auth,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text('Overview',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            Padding(
              padding:
                  EdgeInsets.only(left: 10, bottom: 20, right: 10, top: 10),
              child: Text(
                loadedProduct.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ), //apply padding to some sides only
            ),
          ],
        ),
      ),
    );
  }
}
