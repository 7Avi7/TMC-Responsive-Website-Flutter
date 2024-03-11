import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmc_hss/core/view_models/products_view_model.dart';
import 'package:tmc_hss/ui/views/about_view.dart';
import 'package:tmc_hss/ui/views/base_view.dart';
import 'package:tmc_hss/ui/views/contact_view.dart';
import 'package:tmc_hss/ui/views/home_view.dart';
import 'package:tmc_hss/ui/views/ip_telephony_view.dart';
import 'package:tmc_hss/ui/views/lucent_chart_view.dart';
import 'package:tmc_hss/ui/views/productive_office_view.dart';
import 'package:tmc_hss/ui/views/security_solutions_view.dart';
import 'package:tmc_hss/ui/views/video_conf_view.dart';

import 'bus_view.dart';
import 'cloud_view.dart';
import 'email_view.dart';
import 'manage_it_view.dart';
import 'services_view.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
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
    return BaseView<ProductsViewModel>(
      onModelReady: (model) {
        model.getProducts();
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
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        model.productsModel!.data![0].attributes!.heading!,
                        style: const TextStyle(
                          color: Color(0xFF3E8B94),
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        model.productsModel!.data![0].attributes!.subheading!,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SizedBox(
                        width: 800,
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
                                    '${model.productsModel!.data![0].attributes!.card![0].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.productsModel!.data![0].attributes!.card![0].subtitle}',
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
                                                  const ProductiveOfficeView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.productsModel!.data![0].attributes!.card![0].button}',
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
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SizedBox(
                        width: 800,
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
                                    '${model.productsModel!.data![0].attributes!.card![1].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.productsModel!.data![0].attributes!.card![1].subtitle}',
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
                                                  const VideoConfView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.productsModel!.data![0].attributes!.card![1].button}',
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
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SizedBox(
                        width: 800,
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
                                    '${model.productsModel!.data![0].attributes!.card![2].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.productsModel!.data![0].attributes!.card![2].subtitle}',
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
                                                  const IPTelephonyView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.productsModel!.data![0].attributes!.card![2].button}',
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
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SizedBox(
                        width: 800,
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
                                    '${model.productsModel!.data![0].attributes!.card![3].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.productsModel!.data![0].attributes!.card![3].subtitle}',
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
                                                  const SecuritySolutionsView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.productsModel!.data![0].attributes!.card![3].button}',
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
                    ),
                    const SizedBox(
                      height: 30,
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
                                        'https://api.strapi.transworldbd.com/uploads/IDEAL_TEXTILE_LTD_eb3c664f20.jpg'),
                                  ),
                                  Expanded(
                                    child: Image.network(
                                        'https://api.strapi.transworldbd.com/uploads/Dynamic_Group_5454154e70.jpg'),
                                  ),
                                  Expanded(
                                    child: Image.network(
                                        'https://api.strapi.transworldbd.com/uploads/Icon_Group_e7181b6ec4.png'),
                                  ),
                                  Expanded(
                                    child: Image.network(
                                        'https://api.strapi.transworldbd.com/uploads/HOSAF_GROUP_bfc88f9462.png'),
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 100,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Image.network(
                                        'https://api.strapi.transworldbd.com/uploads/KN_Harbour_Consortiu_7a59db9616.jpg'),
                                  ),
                                  Expanded(
                                    child: Image.network(
                                        'https://api.strapi.transworldbd.com/uploads/ISPAHANI_0009126416.jpg'),
                                  ),
                                  Expanded(
                                    child: Image.network(
                                        'https://api.strapi.transworldbd.com/uploads/GRAPHICS_TEXTILES_LTD_db744c5074.jpg'),
                                  ),
                                  Expanded(
                                    child: Image.network(
                                        'https://api.strapi.transworldbd.com/uploads/INCEPTA_PHARMACEUTICALS_11938f49d0.png'),
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
                    const SizedBox(
                      height: 30,
                    ),
                    Image.network(
                      'https://api.strapi.transworldbd.com/uploads/TMC_Logo_2ec3db61b5.png',
                      height: 200,
                      width: 500,
                    ),
                    Text(
                      model.productsModel!.data![0].attributes!.heading!,
                      style: const TextStyle(
                        color: Color(0xFF3E8B94),
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        model.productsModel!.data![0].attributes!.subheading!,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SizedBox(
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
                                          '${model.productsModel!.data![0].attributes!.card![0].title}',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24),
                                        ),
                                      ),
                                      Text(
                                        '${model.productsModel!.data![0].attributes!.card![0].subtitle}',
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
                                                        const ProductiveOfficeView(),
                                                  ),
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      '${model.productsModel!.data![0].attributes!.card![0].button}',
                                                      style: const TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    child: Icon(
                                                      CupertinoIcons
                                                          .arrow_right,
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
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: SizedBox(
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
                                          '${model.productsModel!.data![0].attributes!.card![1].title}',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24),
                                        ),
                                      ),
                                      Text(
                                        '${model.productsModel!.data![0].attributes!.card![1].subtitle}',
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
                                                        const VideoConfView(),
                                                  ),
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      '${model.productsModel!.data![0].attributes!.card![1].button}',
                                                      style: const TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    child: Icon(
                                                      CupertinoIcons
                                                          .arrow_right,
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
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SizedBox(
                        width: 800,
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
                                    '${model.productsModel!.data![0].attributes!.card![2].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.productsModel!.data![0].attributes!.card![2].subtitle}',
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
                                                  const IPTelephonyView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.productsModel!.data![0].attributes!.card![2].button}',
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
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SizedBox(
                        width: 800,
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
                                    '${model.productsModel!.data![0].attributes!.card![3].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Text(
                                  '${model.productsModel!.data![0].attributes!.card![3].subtitle}',
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
                                                  const SecuritySolutionsView(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '${model.productsModel!.data![0].attributes!.card![3].button}',
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
                    ),
                    const SizedBox(
                      height: 30,
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
        }),
      ),
    );
  }
}
