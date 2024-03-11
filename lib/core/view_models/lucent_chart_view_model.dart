import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/lucent_chart_models.dart';
import 'package:tmc_hss/core/services/lucent_chart_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class LucentChartViewModel extends BaseViewModel {
  final LucentChartAPI _LucentChartList = locator<LucentChartAPI>();

  LucentChartModel? lucentChartModel;

  Future<void> getLucentChart() async {
    setViewState(ViewState.busy);

    lucentChartModel = await _LucentChartList.getLucentChartAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
