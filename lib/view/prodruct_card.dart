import 'package:flutter/material.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import '../constants.dart';
import 'package:food_tracker/view_model/prodf_view_model.dart';

class ProductCard extends StatelessWidget {
  final ProductViewModel productViewModel;

  ProductCard({required this.productViewModel});

  @override
  Widget build(BuildContext context) {
    final ktextStyle1 = TextStyle(
        fontSize: 14.0, color: Theme.of(context).colorScheme.onPrimary);
    final ktextStyle2 = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onPrimary,
    );

    final dynamic upcCode = productViewModel.productModel.items[0].upc;
    final dynamic image = productViewModel.productModel.items[0].images[0];
    /*   String category =
        productViewModel.productModel.items[0].category.toString(); */
    final dynamic brand = productViewModel.productModel.items[0].brand;
    final dynamic description =
        productViewModel.productModel.items[0].description;
    final dynamic title = productViewModel.productModel.items[0].title;

    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Card(
          margin: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 50.0),
          elevation: 0.0,
          color: Theme.of(context).colorScheme.primary,
          shape: const RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            side: BorderSide.none,
            //(color: Theme.of(context).colorScheme.outline)
          ),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  kgap20,
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: ktextStyle2,
                    ),
                  ),
                  kgap10,
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Image.network(
                      image,
                      scale: 3,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  kgap20,
                  Text(
                    ' $upcCode',
                    textAlign: TextAlign.left,
                    style: ktextStyle1,
                  ),
                  kgap10,
                  Text(
                    'Brand : $brand',
                    textAlign: TextAlign.start,
                    style: ktextStyle1,
                  ),
                  kgap10,
                  Text(
                    'Description : $description',
                    textAlign: TextAlign.center,
                    style: ktextStyle1,
                  ),
                  kgap10,
                  FloatingActionButton(
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: const Icon(
                      Icons.add,
                      size: 30.0,
                      weight: 20.0,
                    ),
                    onPressed: () async {
                      ProdfProvider()
                          .addProds(upcCode, brand, image, description, title);

                      //Databasehelper db = Databasehelper();

                      //await db.init();
                      //int valor = await db.insert(datos);
                      //print('Valor final es $valor');

                      Navigator.pop(context);
                    },
                  ),
                ]),
          )),
    );
  }
}
