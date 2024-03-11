import 'package:flutter/material.dart';
import 'package:tmc_hss/core/view_models/lucent_chart_view_model.dart';
import 'package:tmc_hss/ui/views/base_view.dart';
import 'package:tmc_hss/ui/views/ip_telephony_view.dart';
import 'package:tmc_hss/ui/views/products_view.dart';
import 'package:tmc_hss/ui/views/security_solutions_view.dart';
import 'package:tmc_hss/ui/views/services_view.dart';
import 'package:tmc_hss/ui/views/video_conf_view.dart';
import 'package:tmc_hss/ui/widgets/player.dart';

import 'about_view.dart';
import 'bus_view.dart';
import 'cloud_view.dart';
import 'contact_view.dart';
import 'email_view.dart';
import 'home_view.dart';
import 'manage_it_view.dart';
import 'productive_office_view.dart';

class LucentChartView extends StatefulWidget {
  const LucentChartView({super.key});

  @override
  State<LucentChartView> createState() => _LucentChartViewState();
}

class _LucentChartViewState extends State<LucentChartView> {
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
    return BaseView<LucentChartViewModel>(
      onModelReady: (model) {
        model.getLucentChart();
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
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://api.strapi.transworldbd.com/uploads/TMC_Logo_2ec3db61b5.png',
                      height: 200,
                      width: 500,
                    ),
                    Center(
                      child: Image.network(
                        'https://api.strapi.transworldbd.com/uploads/small_Logo_for_website_1847c5ebac.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: PlayerWidget(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(100),
                      child: Text(
                          "${model.lucentChartModel?.data?.attributes?.heading}"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 100, left: 400, right: 400),
                      child: PlayerWidget(),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '${model.lucentChartModel!.data!.attributes!.element1!.heading}\n',
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    '${model.lucentChartModel!.data!.attributes!.element1!.subheading}\n'),
                                SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  '${model.lucentChartModel!.data!.attributes!.element2!.heading}\n',
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '• ${model.lucentChartModel!.data!.attributes!.element2!.list![0].item}\n',
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '• ${model.lucentChartModel!.data!.attributes!.element2!.list![1].item}\n',
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '• ${model.lucentChartModel!.data!.attributes!.element2!.list![2].item}\n',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  '${model.lucentChartModel!.data!.attributes!.text}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '${model.lucentChartModel!.data!.attributes!.refactoryError?.heading}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾ ${model.lucentChartModel!.data!.attributes!.refactoryError?.list?[0].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾ ${model.lucentChartModel!.data!.attributes!.refactoryError?.list?[1].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾ ${model.lucentChartModel!.data!.attributes!.refactoryError?.list?[2].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '${model.lucentChartModel!.data!.attributes!.example?.heading}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[0].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[1].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[2].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[3].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[4].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  '${model.lucentChartModel!.data!.attributes!.conclusionPart}',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
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
              ),
            );
          } else {
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://api.strapi.transworldbd.com/uploads/TMC_Logo_2ec3db61b5.png',
                      height: 200,
                      width: 500,
                    ),
                    Center(
                      child: Image.network(
                        'https://api.strapi.transworldbd.com/uploads/small_Logo_for_website_1847c5ebac.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                      child: Text(
                          "${model.lucentChartModel?.data?.attributes?.heading}"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 100, left: 400, right: 400),
                      child: PlayerWidget(),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '${model.lucentChartModel!.data!.attributes!.element1!.heading}\n',
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    '${model.lucentChartModel!.data!.attributes!.element1!.subheading}\n'),
                                SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  '${model.lucentChartModel!.data!.attributes!.element2!.heading}\n',
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '• ${model.lucentChartModel!.data!.attributes!.element2!.list![0].item}\n',
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '• ${model.lucentChartModel!.data!.attributes!.element2!.list![1].item}\n',
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '• ${model.lucentChartModel!.data!.attributes!.element2!.list![2].item}\n',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  '${model.lucentChartModel!.data!.attributes!.text}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '${model.lucentChartModel!.data!.attributes!.refactoryError?.heading}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾ ${model.lucentChartModel!.data!.attributes!.refactoryError?.list?[0].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾ ${model.lucentChartModel!.data!.attributes!.refactoryError?.list?[1].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾ ${model.lucentChartModel!.data!.attributes!.refactoryError?.list?[2].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '${model.lucentChartModel!.data!.attributes!.example?.heading}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[0].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[1].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[2].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[3].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '⦾${model.lucentChartModel!.data!.attributes!.example?.list?[4].item}',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  '${model.lucentChartModel!.data!.attributes!.conclusionPart}',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
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
                    Container(
                      height: 60,
                      color: Colors.black,
                      child: const Center(
                        child: Text(
                          "Copyright © 2024 Transworld Mercantile Corporation. All Rights Reserved.",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        }),
      ),
    );
  }
}
