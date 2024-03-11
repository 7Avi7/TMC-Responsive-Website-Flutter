import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/productive_office_models.dart';
import 'package:tmc_hss/core/services/productive_office_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class ProductiveOfficeViewModel extends BaseViewModel {
  final ProductiveOfficeAPI _ProductiveOfficeList =
      locator<ProductiveOfficeAPI>();

  ProductiveOfficeModel? productiveOfficeModel;

  Future<void> getProductiveOffice() async {
    setViewState(ViewState.busy);

    productiveOfficeModel =
        await _ProductiveOfficeList.getProductiveOfficeAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
