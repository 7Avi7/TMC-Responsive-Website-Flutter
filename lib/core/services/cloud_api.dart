// manageed-cloud-service?populate=deep,10

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/cloud_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class CloudAPI {
  Future<CloudModel> getCloudAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}manageed-cloud-service?populate=deep,10'),
    );

    CloudModel cloudModel = cloudModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return cloudModel;
  }
}
