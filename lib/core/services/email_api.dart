// EmailTModel
// emailTModelFromJson

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/email_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class EmailAPI {
  // String url = "https://api.strapi.transworldbd.com/api/landing-pages?populate=*";

  Future<EmailTModel> getEmailAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}e-mail-migration-and-management?populate=deep,10'),
    );

    EmailTModel emailTModel = emailTModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return emailTModel;
  }
}
