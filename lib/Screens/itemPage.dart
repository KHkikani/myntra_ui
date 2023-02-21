import 'package:flutter/material.dart';
import 'package:myntra_ui/constants/colors.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    String res = ModalRoute.of(context)!.settings.arguments as String;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: AppUIUtils.appPrimaryColor),
          elevation: 1,
          backgroundColor: AppUIUtils.appBarPrimaryColor,
          title: Text(
            res,
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
      ),
    );
  }
}
