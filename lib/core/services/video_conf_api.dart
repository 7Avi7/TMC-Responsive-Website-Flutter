import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/video_conf_models.dart';
import 'package:tmc_hss/ui/shared/api_url.dart';

class VideoConfAPI {
  // String url = "https://api.strapi.transworldbd.com/api/landing-pages?populate=*";

  Future<VideoConfModel> getVideoConfAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('${coreUrl}video-conferencing-solution?populate=deep,10'),
    );

    VideoConfModel videoConfModel = videoConfModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return videoConfModel;
  }
}
