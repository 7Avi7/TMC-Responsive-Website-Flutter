import 'package:get_it/get_it.dart';
import 'package:tmc_hss/core/services/about_api.dart';
import 'package:tmc_hss/core/services/bus_api.dart';
import 'package:tmc_hss/core/services/cloud_api.dart';
import 'package:tmc_hss/core/services/email_api.dart';
import 'package:tmc_hss/core/services/home_api.dart';
import 'package:tmc_hss/core/services/ip_telephony_api.dart';
import 'package:tmc_hss/core/services/lucent_chart_api.dart';
import 'package:tmc_hss/core/services/manage_it_api.dart';
import 'package:tmc_hss/core/services/productive_office_api.dart';
import 'package:tmc_hss/core/services/products_api.dart';
import 'package:tmc_hss/core/services/security_solutions_api.dart';
import 'package:tmc_hss/core/services/services_api.dart';
import 'package:tmc_hss/core/services/video_conf_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/core/view_models/bus_view_model.dart';
import 'package:tmc_hss/core/view_models/cloud_view_model.dart';
import 'package:tmc_hss/core/view_models/contact_view_model.dart';
import 'package:tmc_hss/core/view_models/email_view_models.dart';
import 'package:tmc_hss/core/view_models/home_view_model.dart';
import 'package:tmc_hss/core/view_models/ip_telephony_view_model.dart';
import 'package:tmc_hss/core/view_models/lucent_chart_view_model.dart';
import 'package:tmc_hss/core/view_models/manage_it_view_model.dart';
import 'package:tmc_hss/core/view_models/productive_office_view_model.dart';
import 'package:tmc_hss/core/view_models/products_view_model.dart';
import 'package:tmc_hss/core/view_models/security_solutions_view_model.dart';
import 'package:tmc_hss/core/view_models/services_view_models.dart';
import 'package:tmc_hss/core/view_models/video_conf_view_model.dart';

import 'core/services/contact_api.dart';
import 'core/view_models/about_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => BaseViewModel());

  locator.registerFactory(() => ServicesViewModel());
  locator.registerFactory(() => AboutViewModel());
  locator.registerFactory(() => ContactViewModel());
  locator.registerFactory(() => LucentChartViewModel());
  locator.registerFactory(() => HomeViewModel());
  locator.registerFactory(() => ProductsViewModel());
  locator.registerFactory(() => ProductiveOfficeViewModel());
  locator.registerFactory(() => IPTelephonyViewModel());
  locator.registerFactory(() => VideoConfViewModel());
  locator.registerFactory(() => SecuritySolutionsViewModel());
  locator.registerFactory(() => ManageITViewModel());
  locator.registerFactory(() => EmailViewModel());
  locator.registerFactory(() => CloudViewModel());
  locator.registerFactory(() => BusViewModel());

  locator.registerLazySingleton(() => ServicesAPI());
  locator.registerLazySingleton(() => AboutAPI());
  locator.registerLazySingleton(() => ContactAPI());
  locator.registerLazySingleton(() => LucentChartAPI());
  locator.registerLazySingleton(() => HomeAPI());
  locator.registerLazySingleton(() => ProductsAPI());
  locator.registerLazySingleton(() => ProductiveOfficeAPI());
  locator.registerLazySingleton(() => IPTelephonyAPI());
  locator.registerLazySingleton(() => VideoConfAPI());
  locator.registerLazySingleton(() => SecuritySolutionsAPI());
  locator.registerLazySingleton(() => ManageITAPI());
  locator.registerLazySingleton(() => EmailAPI());
  locator.registerLazySingleton(() => CloudAPI());
  locator.registerLazySingleton(() => BusAPI());
}
