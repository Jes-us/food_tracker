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
    final dynamic brand = productViewModel.productModel.items[0].brand;
    final dynamic description =
        productViewModel.productModel.items[0].description;
    final dynamic title = productViewModel.productModel.items[0].title;
    double deviceDisplayheight = MediaQuery.of(context).size.height;
    double deviceDisplaywidth = MediaQuery.of(context).size.width;

    final ktextStyle2 =
        TextStyle(color: Theme.of(context).colorScheme.onSurface);

    final ktextStyle1 = TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onSurface,
    );

    return Container(
      width: deviceDisplaywidth * 0.10,
      height: deviceDisplayheight * 1.50,
      padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 60.0),
      color: Theme.of(context).colorScheme.background,
      child: Card(
        margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        color: Theme.of(context).colorScheme.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          side: BorderSide.none,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              Expanded(
                flex: 3,
                child: Row(children: [
                  Flexible(
                    flex: 1,
                    child: IconButton(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      style: Theme.of(context).filledButtonTheme.style,
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      onPressed: () {
                        productViewModel.cancelProdcutStorage();
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: FittedBox(
                      child: Text(
                        brand,
                        textAlign: TextAlign.left,
                        style: ktextStyle1,
                      ),
                    ),
                  ),
                ]),
              ),
              Spacer(),
              Expanded(
                flex: 30,
                child: Image.network(
                  image,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: const CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 5,
                          ),
                        ),
                      );
                    }
                  },
                  //scale: 1,
                  alignment: Alignment.centerLeft,
                ),
              ),
              Expanded(
                child: FittedBox(
                  child: Text(
                    ' $upcCode',
                    textAlign: TextAlign.left,
                    style: ktextStyle2,
                  ),
                ),
              ),
              Spacer(),
              Flexible(
                flex: 2,
                child: FittedBox(
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: ktextStyle1,
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 10,
                child: Text(
                  'Description : $description',
                  style: ktextStyle2,
                ),
              ),
              Spacer(),
              Expanded(
                flex: 3,
                child: Center(
                  child: ElevatedButton(
                    style: Theme.of(context).filledButtonTheme.style,
                    child: Text(
                      'Guardar',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                        builder: (context, child) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.90,
                                  height:
                                      MediaQuery.of(context).size.height * 0.70,
                                  child: child)
                            ],
                          );
                        },
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
              ),
              Spacer()
            ]),
      ),
    );
  }
}
