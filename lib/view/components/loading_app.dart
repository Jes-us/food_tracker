import 'package:flutter/material.dart';

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
