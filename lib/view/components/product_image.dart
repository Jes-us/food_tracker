import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;

  const ProductImage({
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return Center(
            child: Container(
              padding: const EdgeInsets.all(5.0),
              child: const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 1,
              ),
            ),
          );
        }
      },
      fit: BoxFit.fill,
    );
  }
}
