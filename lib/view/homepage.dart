import 'package:flutter/material.dart';
import 'package:food_tracker/view/prodruct_card.dart';
import 'package:provider/provider.dart';
import 'package:food_tracker/theme.dart';
import 'package:food_tracker/utilities/barcode_reader.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import 'package:food_tracker/view/components/loading_app.dart';
import 'components/product_list.dart';
import 'components/animated_icon.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductViewModel productViewModel = context.watch<ProductViewModel>();
    // ProdfProvider prodfProvider = context.watch<ProdfProvider>();
    String scanBarcode = '-1';
    BarCode bCodeReader = BarCode();
    bool change = false;

    return Consumer<Manage>(
      builder: (context, Manage themeNotifier, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            actions: [
              IconButton(
                icon: CustomAnimatedIcon(change: themeNotifier.actualTheme),
                onPressed: () {
                  themeNotifier.changeTheme(ThemeMode.dark);

                  change = true;
                },
              ),
            ],
            title: Text(
              'Food Tracker',
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
          ),

          body: SizedBox.expand(
            child: currentWidget(productViewModel),
          ),

          floatingActionButton: Visibility(
            visible: (productViewModel.loading == false &&
                productViewModel.showcard == false),
            child: FloatingActionButton(
                heroTag: "btn2",
                backgroundColor: Theme.of(context).colorScheme.primary,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(Icons.add, size: 30.0, weight: 20.0),
                onPressed: () async {
                  scanBarcode = await bCodeReader.scanBarcodeNormal();
                  //scanBarcode = '034000405688';
                  //scanBarcode = '028400071031';
                  //scanBarcode = '028571000687';
                  //scanBarcode = '070272232027';
                  //scanBarcode = '7790895067532'; // Producto que no existe y devuelve 0
                  //scanBarcode = '0000000000000';

                  if (scanBarcode != '-1') {
                    await productViewModel.setUpcNumber(scanBarcode);
                    await productViewModel.getProducts();

                    if (productViewModel.productModel.items.length != 0) {
                      print('datos recibidos');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        snackBarMessage(context, productViewModel),
                      );
                    }
                  }
                }),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.endContained,
          //  ],
          // ),
        );
      },
    );
  }

  Widget currentWidget(ProductViewModel productViewModel) {
    if (productViewModel.loading == false &&
        productViewModel.showcard == false) {
      return ProductList(textos: productViewModel);
    }
    if (productViewModel.loading == false &&
        productViewModel.showcard == true) {
      return ProductCard(productViewModel: productViewModel);
    } else {
      return const LoadingApp();
    }
  }

  SnackBar snackBarMessage(
      BuildContext context, ProductViewModel productViewModel) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        padding: const EdgeInsets.all(16),
        height: 90,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20)),
        child: Row(children: [
          const SizedBox(
            width: 48,
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Error Message',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Text(
                productViewModel.userError.message,
                style: const TextStyle(fontSize: 12, color: Colors.white),
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
