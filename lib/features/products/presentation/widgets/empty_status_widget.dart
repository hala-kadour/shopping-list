import 'package:flutter/material.dart';

class EmptyStatusWidget extends StatelessWidget {
  const EmptyStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("There's no products yet"));
  }
}
