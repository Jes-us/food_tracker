import 'package:flutter/material.dart';
import 'package:food_tracker/view/prodruct_card.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:food_tracker/theme.dart';
import 'package:food_tracker/utilities/barcode_reader.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import 'package:food_tracker/view/components/loading_app.dart';
import '../components/product_list.dart';
import '../components/animated_icon.dart';
import '../components/alert_dialog.dart';
import '../components/animated_transitions.dart';
import '../components/custom_snackbar.dart';
import 'package:food_tracker/core/app_export.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductViewModel productViewModel = context.watch<ProductViewModel>();

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
                  fontFamily: 'Abril Fatface',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
          ),
          drawer: Drawer(
            backgroundColor: Theme.of(context).colorScheme.background,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Spacer(
                flex: 2,
              ),
              Flexible(
                flex: 2,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.amber,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettings24x24,
                    height: getSize(
                      150,
                    ),
                    width: getSize(
                      150,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        75,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Text('Jesus Rodriguez'),
              Spacer(flex: 1),
              TextButton.icon(
                onPressed: () async {
                  SharedPreferences userPreferences =
                      await SharedPreferences.getInstance();
                  userPreferences.remove("email");
                  Navigator.pushNamed(context, AppRoutes.emailLoginScreen);
                },
                icon: Icon(
                  Icons.logout_rounded,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                label: Text('Logout',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary)),
              ),
              Spacer(
                flex: 2,
              ),
            ]),
          ),
          body: SizedBox.expand(
            child: currentWidget(context, productViewModel),
          ),

          floatingActionButton: Visibility(
            visible: (productViewModel.loading == false &&
                productViewModel.showcard == false &&
                productViewModel.showalert == false &&
                productViewModel.showSnackbar == false),
            child: FloatingActionButton(
                heroTag: 'btn1',
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(
                  Icons.add,
                  size: 30.0,
                  weight: 20.0,
                  color: Colors.white,
                ),
                onPressed: () async {
                  scanBarcode = await bCodeReader.scanBarcodeNormal();
                  //scanBarcode = '034000405688';
                  //scanBarcode = '028571000687';
                  //scanBarcode = '070272232027';
                  //scanBarcode = '7790895067532'; // Producto no
                  //scanBarcode = '0000000000000';
                  // scanBarcode = '6068946450055'; //-- valor nulo

                  if (scanBarcode != '-1') {
                    await productViewModel.setUpcNumber(scanBarcode);
                    await productViewModel.getProducts();

                    if (productViewModel.userError.code != 0) {
                      await ScaffoldMessenger.of(context)
                          .showSnackBar(CustomSnackBar.show(context));
                    }
                  }
                }),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          //  ],
          // ),
        );
      },
    );
  }

  Widget currentWidget(
      BuildContext context, ProductViewModel productViewModel) {
    if (productViewModel.loading == false &&
        productViewModel.showcard == false &&
        productViewModel.showalert == false) {
      return CustomAnimatedTransition(aniteWidget: ProductList());
    }
    if (productViewModel.loading == false &&
        productViewModel.showcard == true &&
        productViewModel.showalert == false) {
      return CustomAnimatedTransition(aniteWidget: ProductCard());
    }
    if (productViewModel.loading == false &&
        productViewModel.showcard == false &&
        productViewModel.showalert == true) {
      return CustomAnimatedTransition(aniteWidget: CustomAlertDialog());
    } else {
      return const LoadingApp();
    }
  }
}
