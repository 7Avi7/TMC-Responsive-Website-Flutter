import 'package:flutter/material.dart';
import 'package:tmc_hss/core/view_models/ip_telephony_view_model.dart';
import 'package:tmc_hss/ui/views/about_view.dart';
import 'package:tmc_hss/ui/views/base_view.dart';
import 'package:tmc_hss/ui/views/contact_view.dart';
import 'package:tmc_hss/ui/views/home_view.dart';
import 'package:tmc_hss/ui/views/lucent_chart_view.dart';
import 'package:tmc_hss/ui/views/security_solutions_view.dart';
import 'package:tmc_hss/ui/views/video_conf_view.dart';

import '../widgets/ip_border.dart';
import 'bus_view.dart';
import 'cloud_view.dart';
import 'email_view.dart';
import 'manage_it_view.dart';
import 'productive_office_view.dart';
import 'products_view.dart';
import 'services_view.dart';

class IPTelephonyView extends StatefulWidget {
  const IPTelephonyView({super.key});

  @override
  State<IPTelephonyView> createState() => _IPTelephonyViewState();
}

class _IPTelephonyViewState extends State<IPTelephonyView> {
  bool mobile = false;

  late List<Widget> appBarItem = [
    const SizedBox(
      height: 100,
    ),
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeView(),
          ),
        );
      },
      child: const Text(
        'Home',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
    const SizedBox(
      height: 30,
      width: 50,
    ),
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AboutView(),
          ),
        );
      },
      child: const Text(
        'About',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
    const SizedBox(
      height: 30,
      width: 50,
    ),
    Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: DropdownButton<String>(
        hint: const Text(
          "Products",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        onChanged: (String? value) {},
        items: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductsView(),
                ),
              );
            },
            child: const Text(
              'Products',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductiveOfficeView(),
                ),
              );
            },
            child: const Text(
              'Productive Office',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VideoConfView(),
                ),
              );
            },
            child: const Text(
              'Video Conferencing Solution',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const IPTelephonyView(),
                ),
              );
            },
            child: const Text(
              'IP Telephony Services & Solutions',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecuritySolutionsView(),
                ),
              );
            },
            child: const Text(
              'Security Solution',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LucentChartView(),
                ),
              );
            },
            child: const Text(
              'Lucent Chart',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ].map<DropdownMenuItem<String>>((Widget button) {
          return DropdownMenuItem<String>(
            value: button.key.toString(),
            child: button,
          );
        }).toList(),
        underline: const SizedBox(), // Remove the underline
      ),
    ),
    const SizedBox(
      height: 30,
      width: 50,
    ),
    Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: DropdownButton<String>(
        hint: const Text(
          "Services",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        onChanged: (String? value) {},
        items: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ServicesView(),
                ),
              );
            },
            child: const Text(
              'Services',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ManageITView(),
                ),
              );
            },
            child: const Text(
              'Manage IT Support Service Desk',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EmailView(),
                ),
              );
            },
            child: const Text(
              'E-Mail Migration and Management',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CloudView(),
                ),
              );
            },
            child: const Text(
              'Manage Cloud Services',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BusView(),
                ),
              );
            },
            child: const Text(
              'Business Analysis & Consultancy',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ].map<DropdownMenuItem<String>>((Widget button) {
          return DropdownMenuItem<String>(
            value: button.key.toString(),
            child: button,
          );
        }).toList(),
        underline: const SizedBox(), // Remove the underline
      ),
    ),
    const SizedBox(
      height: 30,
      width: 50,
    ),
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ContactView(),
          ),
        );
      },
      child: const Text(
        'Contact',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
    const SizedBox(
      width: 50,
      height: 30,
    ),
    // TextButton(
    //   onPressed: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => const ContactView(),
    //       ),
    //     );
    //   },
    //   child: const Flexible(
    //     child: Stack(
    //       clipBehavior: Clip.none,
    //       children: [
    //         Positioned(
    //           left: 120,
    //           top: 2,
    //           child: Icon(
    //             CupertinoIcons.arrow_right,
    //             color: Colors.green,
    //           ),
    //         ),
    //         SizedBox(
    //           width: 10,
    //         ),
    //         Text(
    //           "Start a Project",
    //           style: TextStyle(
    //             color: Colors.green,
    //             fontWeight: FontWeight.bold,
    //             fontSize: 18,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    mobile = MediaQuery.of(context).size.width > 1200 ? false : true;
    return BaseView<IPTelephonyViewModel>(
      onModelReady: (model) {
        model.getIPTelephony();
      },
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Column(
              children: [
                // SizedBox(
                //   height: 35,
                //   child: Image.network(
                //       'https://api.strapi.transworldbd.com/uploads/TMC_Logo_2ec3db61b5.png'),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: mobile ? [] : appBarItem,
                ),
              ],
            ),
          ),
        ),
        drawer: mobile
            ? Drawer(
                child: ListView(
                  children: appBarItem,
                ),
              )
            : null,
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.network(
                        'https://api.strapi.transworldbd.com/uploads/TMC_Logo_2ec3db61b5.png',
                        height: 200,
                        width: 500,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          "${model.ipTelephonyServiceModel?.data?.attributes?.hero?.heading}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          "${model.ipTelephonyServiceModel?.data?.attributes?.hero?.subheading}",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                '${model.ipTelephonyServiceModel?.data?.attributes?.feature?.heading}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(100.0),
                              child: Column(
                                children: [
                                  Text(
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[0].item}\n'
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[1].item}\n'
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[2].item}\n'
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[3].item}\n'
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[4].item}\n'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const IPBorder(),
                      Text(
                          '${model.ipTelephonyServiceModel?.data?.attributes?.package?[0].heading}'),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[0].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[0].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[0].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[1].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[1].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[1].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[2].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[2].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[2].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[3].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[3].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[3].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[4].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[4].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[4].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[5].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[5].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[5].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[6].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[6].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[6].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[7].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[7].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[7].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[8].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[8].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[8].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[9].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[9].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[9].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[10].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[10].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[10].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[11].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[11].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[11].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[12].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[12].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[12].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[13].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[13].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[13].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[14].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[14].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[14].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[15].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[15].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[15].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[16].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[16].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[16].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[17].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[17].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[17].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[18].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[18].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[18].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[19].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[19].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[19].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[20].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[20].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[20].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[21].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[21].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[21].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[22].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[22].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[22].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[23].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[23].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[23].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[24].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[24].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[24].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      const SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 100,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/Robi_Axiata_Limited_4b1a28483c.png'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/Bongo_BD_241091be29.jpg'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/Kazi_Farms_Limited_22afbe31a5.jpg'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/Lumipex_796f9498da.jpg'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/Nielsen_6cf75b203e.jpg'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/KN_Harbour_Consortiu_7a59db9616.jpg'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/PETROCHEM_GROUP_bec9a51bfa.jpg'),
                                        ),
                                      ]),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/INCEPTA_PHARMACEUTICALS_11938f49d0.png'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/ISPAHANI_0009126416.jpg'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/HOSAF_GROUP_bfc88f9462.png'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/Icon_Group_e7181b6ec4.png'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/GRAPHICS_TEXTILES_LTD_db744c5074.jpg'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/Dynamic_Group_5454154e70.jpg'),
                                        ),
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/IDEAL_TEXTILE_LTD_eb3c664f20.jpg'),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 60,
                              color: Colors.black,
                              child: const Center(
                                child: Text(
                                  "Copyright © 2024 Transworld Mercantile Corporation. All Rights Reserved.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.network(
                        'https://api.strapi.transworldbd.com/uploads/TMC_Logo_2ec3db61b5.png',
                        height: 200,
                        width: 500,
                      ),
                      Text(
                        "${model.ipTelephonyServiceModel?.data?.attributes?.hero?.heading}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          "${model.ipTelephonyServiceModel?.data?.attributes?.hero?.subheading}",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                '${model.ipTelephonyServiceModel?.data?.attributes?.feature?.heading}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(100.0),
                              child: Column(
                                children: [
                                  Text(
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[0].item}\n'
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[1].item}\n'
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[2].item}\n'
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[3].item}\n'
                                      '⦾ ${model.ipTelephonyServiceModel?.data?.attributes?.feature?.list?[4].item}\n'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const IPBorder(),
                      Text(
                          '${model.ipTelephonyServiceModel?.data?.attributes?.package?[0].heading}'),
                      const IPBorder(),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[0].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[0].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[0].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[1].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[1].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[1].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[2].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[2].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[2].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[3].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[3].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[3].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[4].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[4].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[4].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[5].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[5].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[5].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[6].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[6].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[6].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[7].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[7].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[7].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[8].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[8].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[8].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[9].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[9].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[9].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[10].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[10].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[10].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[11].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[11].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[11].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[12].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[12].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[12].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[13].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[13].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[13].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[14].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[14].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[14].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[15].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[15].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[15].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[16].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[16].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[16].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[17].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[17].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[17].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[18].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[18].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[18].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[19].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[19].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[19].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[20].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[20].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[20].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[21].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[21].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[21].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[22].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[22].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[22].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[23].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[23].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[23].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[24].list?[0].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[24].list?[1].item}'),
                            ),
                            Flexible(
                              child: Text(
                                  '${model.ipTelephonyServiceModel?.data?.attributes?.package?[24].list?[2].item}'),
                            ),
                          ],
                        ),
                      ),
                      const IPBorder(),
                      const SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 100,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/Robi_Axiata_Limited_4b1a28483c.png'),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                left: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the left border
                                                  width:
                                                      1, // Width for the left border
                                                ),
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/Bongo_BD_241091be29.jpg'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/Kazi_Farms_Limited_22afbe31a5.jpg'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/Lumipex_796f9498da.jpg'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/Nielsen_6cf75b203e.jpg'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/KN_Harbour_Consortiu_7a59db9616.jpg'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/PETROCHEM_GROUP_bec9a51bfa.jpg'),
                                          ),
                                        ),
                                      ]),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Image.network(
                                              'https://api.strapi.transworldbd.com/uploads/INCEPTA_PHARMACEUTICALS_11938f49d0.png'),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                left: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the left border
                                                  width:
                                                      1, // Width for the left border
                                                ),
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/ISPAHANI_0009126416.jpg'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/HOSAF_GROUP_bfc88f9462.png'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/Icon_Group_e7181b6ec4.png'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/GRAPHICS_TEXTILES_LTD_db744c5074.jpg'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Colors.grey,
                                                  // Color for the right border
                                                  width:
                                                      1, // Width for the right border
                                                ),
                                              ),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/Dynamic_Group_5454154e70.jpg'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(),
                                            ),
                                            child: Image.network(
                                                'https://api.strapi.transworldbd.com/uploads/IDEAL_TEXTILE_LTD_eb3c664f20.jpg'),
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 60,
                              color: Colors.black,
                              child: const Center(
                                child: Text(
                                  "Copyright © 2024 Transworld Mercantile Corporation. All Rights Reserved.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
