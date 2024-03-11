// SecuritySolutionsModel
// securitySolutionsModelFromJson
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/security_solutions_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class SecuritySolutionsAPI {
  // String url = "https://api.strapi.transworldbd.com/api/landing-pages?populate=*";

  Future<SecuritySolutionsModel> getSecuritySolutionsAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}security-solution?populate=deep,10'),
    );

    SecuritySolutionsModel securitySolutionsModel =
        securitySolutionsModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return securitySolutionsModel;
  }
}
