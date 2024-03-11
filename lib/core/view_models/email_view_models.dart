import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/email_models.dart';
import 'package:tmc_hss/core/services/email_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class EmailViewModel extends BaseViewModel {
  final EmailAPI _EmailList = locator<EmailAPI>();

  EmailTModel? emailTModel;

  Future<void> getEmail() async {
    setViewState(ViewState.busy);

    emailTModel = await _EmailList.getEmailAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
