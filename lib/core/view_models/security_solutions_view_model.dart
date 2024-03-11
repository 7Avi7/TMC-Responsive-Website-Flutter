import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/security_solutions_models.dart';
import 'package:tmc_hss/core/services/security_solutions_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class SecuritySolutionsViewModel extends BaseViewModel {
  final SecuritySolutionsAPI _SecuritySolutionsList =
      locator<SecuritySolutionsAPI>();

  SecuritySolutionsModel? securitySolutionsModel;

  Future<void> getSecuritySolutions() async {
    setViewState(ViewState.busy);

    securitySolutionsModel =
        await _SecuritySolutionsList.getSecuritySolutionsAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
