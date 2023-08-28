import 'package:flutter/material.dart';
import 'package:food_tracker/prodruct_card.dart';
import 'package:provider/provider.dart';
import 'package:food_tracker/theme.dart';
import 'package:food_tracker/utilities/barcode_reader.dart';
import 'package:food_tracker/constants.dart';
import 'package:food_tracker/view_model/product_view_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductViewModel productViewModel = context.watch<ProductViewModel>();

    String scanBarcode = 'Unknown';
    BarCode bCodeReader = BarCode();
    List<String> textos = [];

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
            const SizedBox(
              height: 20,
            ),
            currentWidget(productViewModel),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              FloatingActionButton(
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
                    scanBarcode = '034000405608';

                    if (scanBarcode != 'Unknown') {
                      await productViewModel.setUpcNumber(scanBarcode);
                      await productViewModel.getProducts();

                      if (productViewModel.userError.code == 0) {
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
              const SizedBox(
                width: 20,
              )
            ]),
            kgap20
          ]),
          //  ],
          // ),
        );
      },
    );
  }

  dynamic currentWidget(ProductViewModel productViewModel) {
    if (productViewModel.loading == false) {
      return product_list(textos: []);
    } else {
      return loading_app();
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

class product_list extends StatelessWidget {
  const product_list({
    super.key,
    required this.textos,
  });

  final List<String> textos;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          separatorBuilder: ((context, index) => const Divider()),
          itemCount: textos.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.all(50),
              height: 80,
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Center(
                child: Text(
                  textos[index],
                  style: TextStyle(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontSize: 16),
                ),
              ),
            );
          }),
    );
  }
}

class loading_app extends StatelessWidget {
  const loading_app({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
}
