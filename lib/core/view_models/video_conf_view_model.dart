import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/video_conf_models.dart';
import 'package:tmc_hss/core/services/video_conf_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class VideoConfViewModel extends BaseViewModel {
  final VideoConfAPI _VideoConfList = locator<VideoConfAPI>();

  VideoConfModel? videoConfModel;

  Future<void> getVideoConf() async {
    setViewState(ViewState.busy);

    videoConfModel = await _VideoConfList.getVideoConfAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
