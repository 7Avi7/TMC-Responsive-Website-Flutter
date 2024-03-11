import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmc_hss/core/view_models/home_view_model.dart';
import 'package:tmc_hss/ui/views/base_view.dart';
import 'package:tmc_hss/ui/views/ip_telephony_view.dart';
import 'package:tmc_hss/ui/views/productive_office_view.dart';
import 'package:tmc_hss/ui/views/products_view.dart';
import 'package:tmc_hss/ui/views/security_solutions_view.dart';
import 'package:tmc_hss/ui/views/services_view.dart';
import 'package:tmc_hss/ui/views/video_conf_view.dart';

import 'about_view.dart';
import 'bus_view.dart';
import 'cloud_view.dart';
import 'contact_view.dart';
import 'email_view.dart';
import 'lucent_chart_view.dart';
import 'manage_it_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
    return BaseView<HomeViewModel>(
      onModelReady: (model) {
        model.getHome();
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
                          textAlign: TextAlign.center,
                          "${model.homeModel!.data![0].attributes!.heading}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "${model.homeModel!.data![0].attributes!.hero!.title}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(100.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "${model.homeModel!.data![0].attributes!.hero!.subtitle}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.red,
                            side: const BorderSide(
                              color: Colors.green,
                              width: 1,
                            ),
                            elevation: 4,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue,

                            // minimumSize: const Size(double.infinity, 10),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ContactView(),
                              ),
                            );
                          },
                          child: Text(
                            "${model.homeModel!.data![0].attributes!.hero1!.button}",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "${model.homeModel!.data![0].attributes!.content!.heading}",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "${model.homeModel!.data![0].attributes!.content!.subheading}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Card(
                          color: Colors.white,
                          // shadowColor: Colors.white,
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    '${model.homeModel!.data![0].attributes!.card![0].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.homeModel!.data![0].attributes!.card![0].subtitle}',
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const ManageITView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.homeModel!.data![0].attributes!.card![0].button}',
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const Expanded(
                                              child: Icon(
                                                CupertinoIcons.arrow_right,
                                                size: 20,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Card(
                          color: Colors.white,
                          // shadowColor: Colors.white,
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    '${model.homeModel!.data![0].attributes!.card![1].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.homeModel!.data![0].attributes!.card![1].subtitle}',
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const EmailView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.homeModel!.data![0].attributes!.card![1].button}',
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const Expanded(
                                              child: Icon(
                                                CupertinoIcons.arrow_right,
                                                size: 20,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Card(
                          color: Colors.white,
                          // shadowColor: Colors.white,
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    '${model.homeModel!.data![0].attributes!.card![2].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.homeModel!.data![0].attributes!.card![2].subtitle}',
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const CloudView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.homeModel!.data![0].attributes!.card![2].button}',
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const Expanded(
                                              child: Icon(
                                                CupertinoIcons.arrow_right,
                                                size: 20,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Card(
                          color: Colors.white,
                          // shadowColor: Colors.white,
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    '${model.homeModel!.data![0].attributes!.card![3].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.homeModel!.data![0].attributes!.card![3].subtitle}',
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const BusView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.homeModel!.data![0].attributes!.card![3].button}',
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const Expanded(
                                              child: Icon(
                                                CupertinoIcons.arrow_right,
                                                size: 20,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // let's work
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          '${model.homeModel!.data![0].attributes!.hero1!.title}',
                          style: const TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // let's work
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          '${model.homeModel!.data![0].attributes!.hero1!.subtitle}',
                          // style: const TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.red,
                            side: const BorderSide(
                              color: Colors.green,
                              width: 1,
                            ),
                            elevation: 4,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue,

                            // minimumSize: const Size(double.infinity, 10),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ContactView(),
                              ),
                            );
                          },
                          child: Text(
                            "${model.homeModel!.data![0].attributes!.hero1!.button}",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          ),
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
                    children: [
                      Image.network(
                        'https://api.strapi.transworldbd.com/uploads/TMC_Logo_2ec3db61b5.png',
                        height: 200,
                        width: 500,
                      ),
                      Text(
                        "${model.homeModel!.data![0].attributes!.heading}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "${model.homeModel!.data![0].attributes!.hero!.title}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(100.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "${model.homeModel!.data![0].attributes!.hero!.subtitle}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.red,
                            side: const BorderSide(
                              color: Colors.green,
                              width: 1,
                            ),
                            elevation: 4,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue,

                            // minimumSize: const Size(double.infinity, 10),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ContactView(),
                              ),
                            );
                          },
                          child: Text(
                            "${model.homeModel!.data![0].attributes!.hero1!.button}",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "${model.homeModel!.data![0].attributes!.content!.heading}",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "${model.homeModel!.data![0].attributes!.content!.subheading}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      // let's work
                      Text(
                        '${model.homeModel!.data![0].attributes!.hero1!.title}',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 500,
                            height: 300,
                            child: Card(
                              color: Colors.white,
                              // shadowColor: Colors.white,
                              elevation: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '${model.homeModel!.data![0].attributes!.card![0].title}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                    ),
                                    Text(
                                      '${model.homeModel!.data![0].attributes!.card![0].subtitle}',
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ManageITView(),
                                                ),
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '${model.homeModel!.data![0].attributes!.card![0].button}',
                                                    style: const TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                const Expanded(
                                                  child: Icon(
                                                    CupertinoIcons.arrow_right,
                                                    size: 20,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 500,
                            height: 300,
                            child: Card(
                              color: Colors.white,
                              // shadowColor: Colors.white,
                              elevation: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '${model.homeModel!.data![0].attributes!.card![1].title}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                    ),
                                    Text(
                                      '${model.homeModel!.data![0].attributes!.card![1].subtitle}',
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const EmailView(),
                                                ),
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '${model.homeModel!.data![0].attributes!.card![1].button}',
                                                    style: const TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                const Expanded(
                                                  child: Icon(
                                                    CupertinoIcons.arrow_right,
                                                    size: 20,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 500,
                            height: 300,
                            child: Card(
                              color: Colors.white,
                              // shadowColor: Colors.white,
                              elevation: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '${model.homeModel!.data![0].attributes!.card![2].title}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                    ),
                                    Text(
                                      '${model.homeModel!.data![0].attributes!.card![2].subtitle}',
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const CloudView(),
                                                ),
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '${model.homeModel!.data![0].attributes!.card![2].button}',
                                                    style: const TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                const Expanded(
                                                  child: Icon(
                                                    CupertinoIcons.arrow_right,
                                                    size: 20,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 500,
                            height: 300,
                            child: Card(
                              color: Colors.white,
                              // shadowColor: Colors.white,
                              elevation: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '${model.homeModel!.data![0].attributes!.card![3].title}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                    ),
                                    Text(
                                      '${model.homeModel!.data![0].attributes!.card![3].subtitle}',
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BusView(),
                                                ),
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '${model.homeModel!.data![0].attributes!.card![3].button}',
                                                    style: const TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                const Expanded(
                                                  child: Icon(
                                                    CupertinoIcons.arrow_right,
                                                    size: 20,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      // let's work
                      Text(
                        '${model.homeModel!.data![0].attributes!.hero1!.title}',
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // let's work
                      Text(
                        '${model.homeModel!.data![0].attributes!.hero1!.subtitle}',
                        // style: const TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.red,
                            side: const BorderSide(
                              color: Colors.green,
                              width: 1,
                            ),
                            elevation: 4,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blue,

                            // minimumSize: const Size(double.infinity, 10),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ContactView(),
                              ),
                            );
                          },
                          child: Text(
                            "${model.homeModel!.data![0].attributes!.hero1!.button}",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),

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
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
