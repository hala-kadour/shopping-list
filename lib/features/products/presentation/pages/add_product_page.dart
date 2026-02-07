import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/core/const/gap.dart';
import 'package:shopping_list/core/widgets/layout/custom_back_app_bar.dart';
import 'package:shopping_list/features/products/data/models/product_model.dart';

import '../provider/product_provider.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  late final TextEditingController _nameCtrl;
  late final TextEditingController _quantityCtrl;
  late final GlobalKey<FormState> _formKey;
  @override
  void initState() {
    _nameCtrl = TextEditingController();
    _quantityCtrl = TextEditingController();
    _formKey = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _quantityCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppBar(title: "Add New Item"),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Product Name"),
              AppGap.h8,
              TextFormField(
                controller: _nameCtrl,
                decoration: InputDecoration(hintText: "e.g. Organic Apples"),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Name is required";
                  }
                  return null;
                },
              ),
              AppGap.h24,
              Text("Quantity"),
              AppGap.h8,
              TextFormField(
                controller: _quantityCtrl,
                decoration: InputDecoration(hintText: "e.g. 5"),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Quantity is required";
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<ProductProvider>(
          builder: (context, value, child) => SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: value.isLoading
                  ? null
                  : () async {
                      if (_formKey.currentState!.validate()) {
                        final success = await value.createProduct(
                          ProductModel(
                            name: _nameCtrl.text.trim(),
                            quantity: _quantityCtrl.text.trim(),
                          ),
                        );
                        if (success && context.mounted) {
                          Navigator.pop(context);
                        }
                      }
                    },
              child: value.isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text("Save Product"),
            ),
          ),
        ),
      ),
    );
  }
}
