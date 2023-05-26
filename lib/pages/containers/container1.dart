import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/extensions/hover_extensions.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Track your \nExpenses to \nSave Money',
                style: TextStyle(
                  fontSize: w! / 20,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Helps you to organize your income adn expenses',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.primary)),
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                      label: Text('Try free Demo'),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    '-Web, ios and Android',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          )),
          Expanded(
              child: Container(
            height: 530,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          )),
        ],
      ),
    );
  }

  Widget MobileContainer1() {
    return Container(
        // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
        child: Column(
      children: [
        Container(
          height: w! / 1.2,
          width: w! / 1.2,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustration1), fit: BoxFit.contain)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Track your \nExpenses to \nSave Money',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: w! / 10,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Helps you to organize \nyour income adn expenses',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 45,
          child: ElevatedButton.icon(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.primary)),
            onPressed: () {},
            icon: Icon(Icons.arrow_drop_down),
            label: Text('Try free Demo'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '-Web, ios and Android',
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ));
  }
}
