import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/core/const/gap.dart';

import '../../data/models/product_model.dart';
import '../provider/product_provider.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(
      context,
      listen: false,
    );

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => productProvider.deleteProduct(product.id!),
                icon: Icon(Icons.delete),
              ),
            ),
            Text(product.name, style: Theme.of(context).textTheme.titleMedium),
            AppGap.h8,
            Text(
              product.quantity,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
