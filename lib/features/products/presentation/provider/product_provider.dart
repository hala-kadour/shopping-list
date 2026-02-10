import 'package:flutter/foundation.dart';
import '../../data/models/product_model.dart';
import '../../data/repositories/product_repository.dart';

class ProductProvider extends ChangeNotifier {
  final ProductRepository _productRepo = ProductRepository();

  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  // =====================================================
  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void _setError(String? message) {
    _errorMessage = message;
    notifyListeners();
  }

  // =====================================================
  Future<void> loadProducts() async {
    _setLoading(true);
    _setError(null);

    try {
      _products = await _productRepo.getProducts();
    } catch (e) {
      _setError('Failed to load products: $e');
    } finally {
      _setLoading(false);
    }
  }

  // =====================================================
  Future<bool> createProduct(ProductModel product) async {
    try {
      final int newId = await _productRepo.createProduct(product);
      product = product.copyWith(id: newId);
      _products.insert(0, product);
      notifyListeners();
      return true;
    } catch (e) {
      _setError('Failed to add product: $e');
      return false;
    }
  }

  // =====================================================
  Future<bool> updateProduct(ProductModel product) async {
    try {
      await _productRepo.updateProduct(product);
      final index = _products.indexWhere((p) => p.id == product.id);
      if (index != -1) {
        _products[index] = product;
        notifyListeners();
      }
      return true;
    } catch (e) {
      _setError('Failed to update product: $e');
      return false;
    }
  }

  // =====================================================
  Future<bool> deleteProduct(int id) async {
    try {
      await _productRepo.deleteProduct(id);
      _products.removeWhere((p) => p.id == id);
      notifyListeners();
      return true;
    } catch (e) {
      _setError('Failed to delete product: $e');
      return false;
    }
  }
}
