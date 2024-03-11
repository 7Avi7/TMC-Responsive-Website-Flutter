import 'package:flutter/material.dart';
import 'package:tmc_hss/core/view_models/email_view_models.dart';
import 'package:tmc_hss/ui/views/base_view.dart';
import 'package:tmc_hss/ui/views/productive_office_view.dart';
import 'package:tmc_hss/ui/views/products_view.dart';
import 'package:tmc_hss/ui/views/security_solutions_view.dart';
import 'package:tmc_hss/ui/views/services_view.dart';
import 'package:tmc_hss/ui/views/video_conf_view.dart';

import 'about_view.dart';
import 'bus_view.dart';
import 'cloud_view.dart';
import 'contact_view.dart';
import 'home_view.dart';
import 'ip_telephony_view.dart';
import 'lucent_chart_view.dart';
import 'manage_it_view.dart';

class EmailView extends StatefulWidget {
  const EmailView({super.key});

  @override
  State<EmailView> createState() => _EmailViewState();
}

class _EmailViewState extends State<EmailView> {
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
    return BaseView<EmailViewModel>(
      onModelReady: (model) {
        model.getEmail();
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
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Text(
                            '${model.emailTModel!.data!.attributes!.hero!.heading}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          '${model.emailTModel?.data?.attributes?.hero?.subheading}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Text(
                            '${model.emailTModel?.data?.attributes?.managementItem?.heading}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[0].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 70, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[1].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 260, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[2].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 110, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[3].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 110, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[4].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[5].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[6].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 120, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[7].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Text(
                            '${model.emailTModel?.data?.attributes?.service?.heading}\n ',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                            '${model.emailTModel?.data?.attributes?.service?.subheading}'),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        '${model.emailTModel?.data?.attributes?.content?[0].heading}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          ' ➠${model.emailTModel?.data?.attributes?.content?[0].list?[0].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          '   ➠${model.emailTModel?.data?.attributes?.content?[0].list?[1].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Text(
                          '   ➠${model.emailTModel?.data?.attributes?.content?[0].list?[2].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 120.0),
                        child: Text(
                          '    ➠${model.emailTModel?.data?.attributes?.content?[0].list?[3].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0),
                        child: Text(
                          '      ➠${model.emailTModel?.data?.attributes?.content?[0].list?[4].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110.0),
                        child: Text(
                          '  ➠${model.emailTModel?.data?.attributes?.content?[0].list?[5].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110.0),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.content?[0].list?[6].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        '${model.emailTModel?.data?.attributes?.content?[1].heading}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[1].list?[0].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '           ➠${model.emailTModel?.data?.attributes?.content?[1].list?[1].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.content?[1].list?[2].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          ' ➠${model.emailTModel?.data?.attributes?.content?[1].list?[3].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          ' ➠${model.emailTModel?.data?.attributes?.content?[1].list?[4].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          ' ➠${model.emailTModel?.data?.attributes?.content?[1].list?[5].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        '${model.emailTModel?.data?.attributes?.content?[2].heading}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[2].list?[0].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[2].list?[1].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[2].list?[2].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[2].list?[3].item}',
                        ),
                      ),
                      // Companies
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
                      Center(
                        child: Text(
                          '${model.emailTModel!.data!.attributes!.hero!.heading}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          '${model.emailTModel?.data?.attributes?.hero?.subheading}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          '${model.emailTModel?.data?.attributes?.managementItem?.heading}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[0].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[1].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[2].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[3].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[4].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[5].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[6].item}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50, top: 10, bottom: 10),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.managementItem?.list?[7].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          '${model.emailTModel?.data?.attributes?.service?.heading}\n ',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                          '${model.emailTModel?.data?.attributes?.service?.subheading}'),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        '${model.emailTModel?.data?.attributes?.content?[0].heading}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          ' ➠${model.emailTModel?.data?.attributes?.content?[0].list?[0].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          '   ➠${model.emailTModel?.data?.attributes?.content?[0].list?[1].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Text(
                          '   ➠${model.emailTModel?.data?.attributes?.content?[0].list?[2].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 120.0),
                        child: Text(
                          '    ➠${model.emailTModel?.data?.attributes?.content?[0].list?[3].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0),
                        child: Text(
                          '      ➠${model.emailTModel?.data?.attributes?.content?[0].list?[4].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110.0),
                        child: Text(
                          '  ➠${model.emailTModel?.data?.attributes?.content?[0].list?[5].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110.0),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.content?[0].list?[6].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        '${model.emailTModel?.data?.attributes?.content?[1].heading}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[1].list?[0].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '           ➠${model.emailTModel?.data?.attributes?.content?[1].list?[1].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '➠${model.emailTModel?.data?.attributes?.content?[1].list?[2].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          ' ➠${model.emailTModel?.data?.attributes?.content?[1].list?[3].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          ' ➠${model.emailTModel?.data?.attributes?.content?[1].list?[4].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          ' ➠${model.emailTModel?.data?.attributes?.content?[1].list?[5].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        '${model.emailTModel?.data?.attributes?.content?[2].heading}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[2].list?[0].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[2].list?[1].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[2].list?[2].item}',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85.0),
                        child: Text(
                          '        ➠${model.emailTModel?.data?.attributes?.content?[2].list?[3].item}',
                        ),
                      ),
                      // Companies
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
            }
          },
        ),
      ),
    );
  }
}
