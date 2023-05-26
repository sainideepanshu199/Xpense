import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/widgets/commonContainer.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container1State();
}

class _Container1State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
    );
  }

  //============== DESKTOP =============
  Widget DesktopContainer3() {
    return CommonContainer(
        'AlWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in.Amet nisl at \nmauris enim ',
        illustration2,
        false);
  }

  //================ MOBILE ===============

  Widget MobileContainer3() {
    return CommonContainerMobile(
      'ALWAYS ONLINE',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
    );
  }
}
