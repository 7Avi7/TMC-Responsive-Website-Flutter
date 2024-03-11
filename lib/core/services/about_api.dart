import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/about_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class AboutAPI {
  Future<AboutModel> getAboutAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}about-uses?populate=*'),
    );

    AboutModel aboutList = aboutModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return aboutList;
  }
}
