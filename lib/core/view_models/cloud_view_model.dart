import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/cloud_models.dart';
import 'package:tmc_hss/core/services/cloud_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class CloudViewModel extends BaseViewModel {
  final CloudAPI _CloudList = locator<CloudAPI>();

  CloudModel? cloudModel;

  Future<void> getCloud() async {
    setViewState(ViewState.busy);

    cloudModel = await _CloudList.getCloudAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
