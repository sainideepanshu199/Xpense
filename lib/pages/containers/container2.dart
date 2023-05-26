// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer2(),
      desktop: DesktopContainer2(),
    );
  }

  ///=======================DESKTOP===========================///
  Widget DesktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(vector1), fit: BoxFit.contain)),
                  )),
              Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(vector2), fit: BoxFit.contain)),
                  )),
              Positioned(
                left: 43,
                right: 43,
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 712,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(dashboard))),
                ),
              )
            ],
          )),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 160,
      height: 36,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }

  ///=======================MOBILE===========================///
  Widget MobileContainer2() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(dashboard), fit: BoxFit.contain)),
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }
}
