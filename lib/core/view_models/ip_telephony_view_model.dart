import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/ip_telephony_models.dart';
import 'package:tmc_hss/core/services/ip_telephony_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class IPTelephonyViewModel extends BaseViewModel {
  final IPTelephonyAPI _IPTelephonyList = locator<IPTelephonyAPI>();

  IpTelephonyServiceModel? ipTelephonyServiceModel;

  Future<void> getIPTelephony() async {
    setViewState(ViewState.busy);

    ipTelephonyServiceModel = await _IPTelephonyList.getIPTelephonyAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
