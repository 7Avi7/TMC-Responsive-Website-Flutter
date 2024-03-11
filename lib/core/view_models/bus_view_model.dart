import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/bus_models.dart';
import 'package:tmc_hss/core/services/bus_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class BusViewModel extends BaseViewModel {
  final BusAPI _BusList = locator<BusAPI>();

  BusModel? busModel;

  Future<void> getBus() async {
    setViewState(ViewState.busy);

    busModel = await _BusList.getBusAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
