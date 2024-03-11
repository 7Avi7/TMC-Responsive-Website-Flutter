import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/home_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class HomeAPI {
  // String url = "https://api.strapi.transworldbd.com/api/landing-pages?populate=*";

  Future<HomeModel> getHomeAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}landing-pages?populate=*'),
    );

    HomeModel homeModel = homeModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return homeModel;
  }
}
