import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/home_models.dart';
import 'package:tmc_hss/core/services/home_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class HomeViewModel extends BaseViewModel {
  final HomeAPI _HomeList = locator<HomeAPI>();

  HomeModel? homeModel;

  Future<void> getHome() async {
    setViewState(ViewState.busy);

    homeModel = await _HomeList.getHomeAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
