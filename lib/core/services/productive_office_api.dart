import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/productive_office_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class ProductiveOfficeAPI {
  Future<ProductiveOfficeModel> getProductiveOfficeAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}productive-office?populate=deep,10'),
    );

    ProductiveOfficeModel productiveOfficeModel =
        productiveOfficeModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return productiveOfficeModel;
  }
}
