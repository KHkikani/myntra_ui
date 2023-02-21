import 'package:flutter/material.dart';

import 'package:myntra_ui/constants/colors.dart';
import 'package:myntra_ui/constants/homePageCategory.dart';
import 'package:myntra_ui/constants/menuItems.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myntra_ui/constants/offerImages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController carouselController1 = CarouselController();
  CarouselController carouselController2 = CarouselController();

  int currentVal1 = 0;
  int currentVal2 = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: AppUIUtils.appPrimaryColor),
          elevation: 1,
          backgroundColor: AppUIUtils.appBarPrimaryColor,
          title: const Text(
            "Myntra",
            style: AppUIUtils.appBarTitleStyle,
          ),
          actions: [
            SizedBox(
              width: width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.add_box_outlined),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.search),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.favorite_border_outlined),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.card_travel_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
        drawer: Drawer(
          width: width * 0.75,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                  "https://assets.myntassets.com/f_webp,dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/2023/2/7/cc8351d0-b237-489d-a9c5-f6ea0222744d1675792734659-offer-banner-200-1080x496-code-_-MYNTRA200.jpg",
                  width: width * 0.75,
                  fit: BoxFit.fitWidth,
                ),
                ...MenuItems.menuItem.map<Widget>((e) {
                  return (e['category'] != null)
                      ? ExpansionTile(
                          childrenPadding: const EdgeInsets.only(left: 10),
                          title: Text("${e['itemName']}"),
                          children: e['category'].map<Widget>((element) {
                            return (element['subCateGory'] != null)
                                ? ExpansionTile(
                                    childrenPadding: const EdgeInsets.only(left: 20),
                                    //children padding
                                    title: Text("${element['categoryName']}"),
                                    children: element['subCateGory']
                                        .map<Widget>((item) {
                                      return ListTile(
                                        title:
                                            Text("${item['subCateGoryName']}"),
                                        onTap: () {
                                          Navigator.of(context).pushNamed(
                                              'itemPage',
                                              arguments:
                                                  "${item['subCateGoryName']}");
                                        },
                                      );
                                    }).toList(),
                                  )
                                : ListTile(
                                    title: Text("${element['categoryName']}"),
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          'itemPage',
                                          arguments:
                                              "${element['categoryName']}");
                                    },
                                  );
                          }).toList(),
                        )
                      : ListTile(
                          title: Text("${e['itemName']}"),
                          onTap: () {
                            Navigator.of(context).pushNamed('itemPage',
                                arguments: "${e['itemName']}");
                          },
                        );
                }).toList(),
                const Divider(thickness: 1),
                ...MenuItems.menuService.map<Widget>((e) {
                  return ListTile(
                    title: Text("${e['serviceName']}"),
                    onTap: () {},
                  );
                }).toList(),
                Image.network(
                  "https://assets.myntassets.com/assets/images/retaillabs/2022/12/30/856cb741-8473-4d5e-b6e3-a52b3d98c99e1672386455977-PWA---App-Download-banner.png",
                  width: width * 0.75,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: HomePageCategory.homePageCategory.map((e) {
                    return Image.network(
                      e,
                      width: width / 5,
                      fit: BoxFit.fitWidth,
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(
                "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto:eco,w_600,c_limit,fl_progressive/assets/images/2023/2/17/fd93ed81-218b-4783-b9e1-ab89aefe279d1676612840959-980-100-Global--1-.gif",
                width: width,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.network(
                      "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto:eco,w_600,c_limit,fl_progressive/assets/images/retaillabs/2023/2/17/91123fd1-81e2-40d7-b373-1c15d2161dff1676624193171-BAU-Main-Banner_01.jpg",
                      width: width / 2,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto:eco,w_600,c_limit,fl_progressive/assets/images/retaillabs/2023/2/17/c0fc49ae-698e-4b1f-bc7c-d401f1b7be1b1676624213248-BAU-Main-Banner_02.jpg",
                      width: width / 2,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Image.network(
                "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto:eco,w_600,c_limit,fl_progressive/assets/images/retaillabs/2023/1/22/738f0ed4-52b6-4e3b-ad54-b81443a64b471674409089100-unnamed--31-.jpg",
                width: width,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 3,
              ),
              CarouselSlider(
                carouselController: carouselController1,
                items: OfferImages.offerImages1.map((e) {
                  return Image.network(
                    e,
                    width: width,
                    fit: BoxFit.fitWidth,
                  );
                }).toList(),
                options: CarouselOptions(
                  onPageChanged: (val, _) {
                    setState(() {
                      currentVal1 = val;
                    });
                  },
                  enlargeFactor: 0.1,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  initialPage: currentVal1,
                  autoPlayCurve: Curves.bounceOut,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Image.network(
                "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto:eco,w_600,c_limit,fl_progressive/assets/images/retaillabs/2023/2/7/be7de052-18cf-4939-b767-8761e78f60e11675749203348-Cred-Strip-Pay-Days--1-.png",
                width: width,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 3,
              ),
              Image.network(
                "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto:eco,w_600,c_limit,fl_progressive/assets/images/retaillabs/2023/2/13/b9f5e2e4-08c9-4ba7-934e-7240fef4804d1676282706321-Flex-320.jpg",
                width: width,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 3,
              ),
              CarouselSlider(
                carouselController: carouselController2,
                items: OfferImages.offerImages2.map((e) {
                  return Image.network(
                    e,
                    width: width,
                    fit: BoxFit.fitWidth,
                  );
                }).toList(),
                options: CarouselOptions(
                  onPageChanged: (val, _) {
                    setState(() {
                      currentVal2 = val;
                    });
                  },
                  reverse: true,
                  enlargeFactor: 0.1,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  initialPage: currentVal2,
                  autoPlayCurve: Curves.bounceOut,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Image.network(
                "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto:eco,w_600,c_limit,fl_progressive/assets/images/retaillabs/2023/2/17/a60c4dfb-de61-4aa6-aad4-d427f49f91421676623413366-Sign-Up-Card--1-.jpg",
                width: width,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
