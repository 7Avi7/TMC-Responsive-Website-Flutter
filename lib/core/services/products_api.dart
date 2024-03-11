import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/products_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class ProductsAPI {
  Future<ProductsModel> getProductsAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}homes'),
    );

    ProductsModel productsModel = productsModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return productsModel;
  }
}
