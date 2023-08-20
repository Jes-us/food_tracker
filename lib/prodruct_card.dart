import 'package:flutter/material.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import 'constants.dart';

class ProductCard extends StatelessWidget {
  final ProductViewModel productViewModel;

  ProductCard({required this.productViewModel});

  @override
  Widget build(BuildContext context) {
    final ktextStyle1 =
        TextStyle(fontSize: 12.0, color: Theme.of(context).colorScheme.primary);
    final ktextStyle2 = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.primary,
    );

    String upcCode = productViewModel.productModel.items[0].upc.toString();
    String image = productViewModel.productModel.items[0].images[0].toString();
    /*   String category =
        productViewModel.productModel.items[0].category.toString(); */
    String brand = productViewModel.productModel.items[0].brand.toString();
    String description =
        productViewModel.productModel.items[0].description.toString();
    String title = productViewModel.productModel.items[0].title.toString();

    return Card(
        margin: const EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 100.0),
        elevation: 40.0,
        color: Theme.of(context).colorScheme.onPrimary,
        shadowColor: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          side: BorderSide.none,
          //(color: Theme.of(context).colorScheme.outline)
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          kgap20,
          Container(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: ktextStyle2,
            ),
          ),
          kgap10,
          Container(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Image.network(
              image,
              alignment: Alignment.centerLeft,
            ),
          ),
          kgap20,
          Row(children: [
            Expanded(
              child: Text(
                ' $upcCode',
                textAlign: TextAlign.left,
                style: ktextStyle1,
              ),
            ),
            kgap10,
            Expanded(
              child: Text(
                'Brand : $brand',
                textAlign: TextAlign.center,
                style: ktextStyle1,
              ),
            ),
          ]),
          kgap10,
          Text(
            'Description : $description',
            textAlign: TextAlign.center,
            style: ktextStyle1,
          ),
          kgap10,
          FilledButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                return Theme.of(context).colorScheme.primary;
                // Defer to the widget's default.
              }),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            label: Text('back'),
          ),
        ]));
  }
}
