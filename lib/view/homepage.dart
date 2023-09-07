import 'package:flutter/material.dart';
import 'package:food_tracker/view/prodruct_card.dart';
import 'package:provider/provider.dart';
import 'package:food_tracker/theme.dart';
import 'package:food_tracker/utilities/barcode_reader.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import 'package:food_tracker/view_model/prodf_view_model.dart';
import 'package:food_tracker/view/components/loading_app.dart';
import 'components/product_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductViewModel productViewModel = context.watch<ProductViewModel>();
    ProdfProvider prodfProvider = context.watch<ProdfProvider>();
    String scanBarcode = 'Unknown';
    BarCode bCodeReader = BarCode();

    return Consumer<Manage>(
      builder: (context, Manage themeNotifier, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          appBar: AppBar(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 3,
            backgroundColor: Theme.of(context).colorScheme.primary,
            actions: [
              IconButton(
                  onPressed: () {
                    themeNotifier.changeTheme(ThemeMode.dark);
                  },
                  icon: const Icon(Icons.dark_mode_rounded)),
            ],
            title: const Text(
              'Food Tracker',
            ),
          ),
          body: Column(children: [
            currentWidget(productViewModel, prodfProvider),
          ]),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.primary,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.add,
                size: 30.0,
                weight: 20.0,
              ),
              onPressed: () async {
                //scanBarcode = await bCodeReader.scanBarcodeNormal();
                scanBarcode = '034000405688';

                if (scanBarcode != 'Unknown') {
                  await productViewModel.setUpcNumber(scanBarcode);
                  await productViewModel.getProducts();

                  if (productViewModel.productModel.items.length != 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductCard(productViewModel: productViewModel),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      snackBarMessage(context, productViewModel),
                    );
                  }
                }

                //print(detalle);
              }),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.endContained,
          //  ],
          // ),
        );
      },
    );
  }

  dynamic currentWidget(
      ProductViewModel productViewModel, ProdfProvider prodfprovider) {
    if (productViewModel.loading == false) {
      return ProductList(textos: prodfprovider);
    } else {
      return const loading_app();
    }
  }

  SnackBar snackBarMessage(
      BuildContext context, ProductViewModel productViewModel) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        padding: EdgeInsets.all(16),
        height: 90,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20)),
        child: Row(children: [
          SizedBox(
            width: 48,
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Error Message',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                productViewModel.userError.message,
                style: const TextStyle(fontSize: 16, color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
