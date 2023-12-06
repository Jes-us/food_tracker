import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food_tracker/view_model/product_view_model.dart';

class CustomSnackBar {
  static SnackBar show(BuildContext context) {
    final productViewModel = context.read<ProductViewModel>();

    return SnackBar(
      duration: const Duration(seconds: 50000),
      behavior: SnackBarBehavior.fixed,
      backgroundColor: Theme.of(context).colorScheme.background,
      showCloseIcon: false,
      content: Container(
        padding: const EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: FittedBox(
                child: Text(
                  productViewModel.userError.message,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
      action: SnackBarAction(
          backgroundColor: Colors.transparent,
          textColor: Theme.of(context).colorScheme.onSurface,
          disabledBackgroundColor: Colors.transparent,
          label: 'Ok',
          onPressed: () {
            productViewModel.setSnackbar(false);
          }),
    );
  }
}
