import 'dart:convert';
import 'package:ecomers2/models/product_model.dart';

import 'package:http/http.dart' as http;

Future<List<ProductModel>> fetchAlbum() async {
  final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((json) => ProductModel.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load products');
  }
}
