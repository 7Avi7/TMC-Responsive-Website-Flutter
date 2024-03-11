import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/ip_telephony_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class IPTelephonyAPI {
  // String url = "https://api.strapi.transworldbd.com/api/landing-pages?populate=*";

  Future<IpTelephonyServiceModel> getIPTelephonyAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}ip-telephone-service?populate=deep,10'),
    );

    IpTelephonyServiceModel ipTelephonyServiceModel =
        ipTelephonyServiceModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return ipTelephonyServiceModel;
  }
}
