import 'package:flutter/material.dart';
import 'package:food_tracker/prodruct_card.dart';
import 'package:provider/provider.dart';
import 'package:food_tracker/theme.dart';
import 'package:food_tracker/utilities/barcode_reader.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import 'package:food_tracker/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductViewModel productViewModel = context.watch<ProductViewModel>();
    //String scanBarcode = 'Unknown';
    BarCode bCodeReader = BarCode();

    List<String> textos = [
      'Text 1',
      'Texto 2',
      'Texto 3',
      'Texto1',
      'Texto 2',
      'Texto 3'
    ];

    return Consumer<Manage>(
      builder: (context, Manage themeNotifier, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.onSecondary,
          appBar: AppBar(
            elevation: 3,
            backgroundColor: Theme.of(context).colorScheme.background,
            actions: [
              IconButton(
                  onPressed: () {
                    themeNotifier.changeTheme(ThemeMode.dark);
                  },
                  icon: const Icon(Icons.dark_mode_rounded)),
            ],
            title: const Text('App de prueba para provider'),
          ),
          body: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                  separatorBuilder: ((context, index) => const Divider()),
                  itemCount: textos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(50),
                      height: 80,
                      color: Theme.of(context).colorScheme.onPrimary,
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
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              IconButton.filled(
                  padding: EdgeInsets.all(20),
                  icon: const Icon(
                    Icons.add,
                    size: 30.0,
                    weight: 20.0,
                  ),
                  onPressed: () async {
                    // String scanBarcode = await bCodeReader.scanBarcodeNormal();
                    String scanBarcode = '034000405688';
                    productViewModel.setUpcNumber(scanBarcode);
                    productViewModel.getProducts();
                    String codigo =
                        productViewModel.productModel.items[0].upc.toString();
                    print('imprimir $codigo');
                    if (productViewModel.productModel.items.length != 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductCard(productViewModel: productViewModel),
                        ),
                      );
                    }

                    //print(detalle);
                  }),
              SizedBox(
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
}
