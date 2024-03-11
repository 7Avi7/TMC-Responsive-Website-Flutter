// busModelFromJson
//BusModel
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/bus_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class BusAPI {
  Future<BusModel> getBusAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}business-analysis-and-consultancy?populate=deep,10'),
    );

    BusModel busList = busModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return busList;
  }
}
