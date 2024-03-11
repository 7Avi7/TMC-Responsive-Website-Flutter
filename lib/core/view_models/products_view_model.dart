import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/products_models.dart';
import 'package:tmc_hss/core/services/products_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class ProductsViewModel extends BaseViewModel {
  final ProductsAPI _ProductsList = locator<ProductsAPI>();

  ProductsModel? productsModel;

  Future<void> getProducts() async {
    setViewState(ViewState.busy);

    productsModel = await _ProductsList.getProductsAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
