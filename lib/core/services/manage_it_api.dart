import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/manage_it_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class ManageITAPI {
  Future<ManageItModel> getManageItAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}manage-it-support-service-desk?populate=deep,10'),
    );

    ManageItModel manageItList = manageItModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return manageItList;
  }
}
