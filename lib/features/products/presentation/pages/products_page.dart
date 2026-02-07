import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/features/products/presentation/pages/add_product_page.dart';
import 'package:shopping_list/features/products/presentation/provider/product_provider.dart';

import '../../../../core/widgets/layout/custom_main_app_bar.dart';
import '../widgets/custom_product_card.dart';
import '../widgets/empty_status_widget.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadProducts();
    });
  }

  Future<void> _loadProducts() async {
    final productsProvider = context.read<ProductProvider>();

    await productsProvider.loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    final productsProvider = context.watch<ProductProvider>();
    final products = productsProvider.products;

    return Scaffold(
      appBar: CustomMainAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProductPage()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: _loadProducts,
        child: products.isEmpty
            ? const EmptyStatusWidget()
            : GridView.builder(
                itemCount: products.length,
                padding: const EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return CustomProductCard(product: products[index]);
                },
              ),
      ),
    );
  }
}
