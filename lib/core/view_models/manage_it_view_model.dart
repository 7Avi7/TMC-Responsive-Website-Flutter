import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/manage_it_models.dart';
import 'package:tmc_hss/core/services/manage_it_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class ManageITViewModel extends BaseViewModel {
  final ManageITAPI _ManageITList = locator<ManageITAPI>();

  ManageItModel? manageItModel;

  Future<void> getManageIT() async {
    setViewState(ViewState.busy);

    manageItModel = await _ManageITList.getManageItAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
