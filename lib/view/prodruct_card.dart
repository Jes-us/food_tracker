import 'package:flutter/material.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import '../constants.dart';

class ProductCard extends StatelessWidget {
  final ProductViewModel productViewModel;

  ProductCard({required this.productViewModel});

  @override
  Widget build(BuildContext context) {
    final dynamic upcCode = productViewModel.productModel.items[0].upc;
    final dynamic image = productViewModel.productModel.items[0].images[0];
    /*   String category =
        productViewModel.productModel.items[0].category.toString(); */
    final dynamic brand = productViewModel.productModel.items[0].brand;
    final dynamic description =
        productViewModel.productModel.items[0].description;
    final dynamic title = productViewModel.productModel.items[0].title;

    double deviceDisplayheight = MediaQuery.of(context).size.height;
    double deviceDisplaywidth = MediaQuery.of(context).size.width;

    final ktextStyle1 = TextStyle(
        fontSize: deviceDisplayheight * 0.012,
        color: Theme.of(context).colorScheme.onSurface);
    final ktextStyle2 = TextStyle(
      fontSize: deviceDisplayheight * 0.014,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onSurface,
    );

    return Expanded(
      child: Container(
        width: deviceDisplaywidth * 0.10,
        height: deviceDisplayheight * 1.50,
        padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 60.0),
        color: Theme.of(context).colorScheme.background,
        child: Card(
          margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          elevation: 0.0,
          color: Theme.of(context).colorScheme.surface,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            side: BorderSide.none,
            //(color: Theme.of(context).colorScheme.outline)
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                kgap20,
                Row(children: [
                  ElevatedButton(
                    style: Theme.of(context).filledButtonTheme.style,
                    child: const Text('<'),
                    onPressed: () {
                      productViewModel.cancelProdcutStorage();
                    },
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text(
                        title,
                        textAlign: TextAlign.left,
                        style: ktextStyle2,
                      ),
                    ),
                  ),
                ]),
                kgap10,
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Image.network(
                    image,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Expanded(
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.all(20.0),
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 5,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    scale: 1,
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
                  textAlign: TextAlign.left,
                  style: ktextStyle1,
                ),
                kgap10,
                Expanded(
                  child: Text(
                    'Description : $description',
                    style: ktextStyle1,
                  ),
                ),
                kgap10,
                Center(
                  child: ElevatedButton(
                    style: Theme.of(context).filledButtonTheme.style,
                    child: const Text('Guardar'),
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), //get today's date
                        firstDate: DateTime(
                            2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101),
                      );

                      if (pickedDate != null) {
                        String date = '$pickedDate';
                        await productViewModel.storeProduct(date);
                      }
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
