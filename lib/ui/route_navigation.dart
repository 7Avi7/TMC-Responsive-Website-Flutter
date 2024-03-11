import 'package:flutter/material.dart';
import 'package:tmc_hss/ui/views/about_view.dart';
import 'package:tmc_hss/ui/views/bus_view.dart';
import 'package:tmc_hss/ui/views/cloud_view.dart';
import 'package:tmc_hss/ui/views/contact_view.dart';
import 'package:tmc_hss/ui/views/email_view.dart';
import 'package:tmc_hss/ui/views/home_view.dart';
import 'package:tmc_hss/ui/views/lucent_chart_view.dart';
import 'package:tmc_hss/ui/views/manage_it_view.dart';
import 'package:tmc_hss/ui/views/security_solutions_view.dart';
import 'package:tmc_hss/ui/views/video_conf_view.dart';

import 'views/ip_telephony_view.dart';
import 'views/productive_office_view.dart';
import 'views/products_view.dart';
import 'views/services_view.dart';

class RouteNavigation {
  static const String servicesView = 'servicesView';
  static const String contactView = 'contactView';
  static const String aboutView = 'aboutView';
  static const String userDetailsView = 'userDetailsView';
  static const String lucentChartView = 'lucentChartView';
  static const String homeView = 'HomeView';
  static const String productsView = 'productsView';
  static const String productiveOfficeView = 'productiveOfficeView';
  static const String iPTelephonyView = 'iPTelephonyView';
  static const String videoConfView = 'videoConfView';
  static const String securitySolutionsView = 'securitySolutionsView';
  static const String manageITView = 'manageITView';
  static const String emailView = 'emailView';
  static const String cloudView = 'cloudView';
  static const String busView = 'busView';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case servicesView:
        return MaterialPageRoute(builder: (context) => const ServicesView());
      case aboutView:
        return MaterialPageRoute(builder: (context) => const AboutView());
      case contactView:
        return MaterialPageRoute(builder: (context) => const ContactView());

      case homeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case lucentChartView:
        return MaterialPageRoute(builder: (context) => const LucentChartView());
      case productsView:
        return MaterialPageRoute(builder: (context) => const ProductsView());
      case productiveOfficeView:
        return MaterialPageRoute(
            builder: (context) => const ProductiveOfficeView());
      case iPTelephonyView:
        return MaterialPageRoute(builder: (context) => const IPTelephonyView());
      case videoConfView:
        return MaterialPageRoute(builder: (context) => const VideoConfView());
      case securitySolutionsView:
        return MaterialPageRoute(
            builder: (context) => const SecuritySolutionsView());
      case manageITView:
        return MaterialPageRoute(builder: (context) => const ManageITView());
      case emailView:
        return MaterialPageRoute(builder: (context) => const EmailView());
      case cloudView:
        return MaterialPageRoute(builder: (context) => const CloudView());
      case busView:
        return MaterialPageRoute(builder: (context) => const BusView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
