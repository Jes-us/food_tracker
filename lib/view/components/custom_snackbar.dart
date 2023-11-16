import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food_tracker/view_model/product_view_model.dart';

class CustomSnackBar {
  static void show(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    final productViewModel = context.read<ProductViewModel>();

    scaffold.showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(10),
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
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
