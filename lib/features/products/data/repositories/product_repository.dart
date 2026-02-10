import 'package:sqflite/sqflite.dart';
import '../../../../core/db/database_helper.dart';
import '../models/product_model.dart';

class ProductRepository {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  final String _table = 'products';

  Future<List<ProductModel>> getProducts() async {
    final db = await _dbHelper.database;
    final result = await db.query(_table);

    return result.map((e) => ProductModel.fromMap(e)).toList();
  }

  Future<int> createProduct(ProductModel product) async {
    final db = await _dbHelper.database;
    return await db.insert(
      _table,
      product.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> updateProduct(ProductModel product) async {
    final db = await _dbHelper.database;
    return await db.update(
      _table,
      product.toMap(),
      where: 'id = ?',
      whereArgs: [product.id],
    );
  }

  Future<int> deleteProduct(int id) async {
    final db = await _dbHelper.database;
    return await db.delete(_table, where: 'id = ?', whereArgs: [id]);
  }
}
