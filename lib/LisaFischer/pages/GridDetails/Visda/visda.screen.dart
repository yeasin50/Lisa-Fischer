import 'package:flutter/material.dart';

import '../../../../configs/configs.dart';
import '../../../../widgets/widgets.dart';
import 'Visda.dart';

class VisdaScreen extends StatelessWidget {
  static final String routeName = "/work/visda";
  const VisdaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          desktop: DesktopViewWrapper(
            child: DesktopView(),
          ),
          tablet: TabletViewWrapper(
            child: TabletView(),
          ),
          mobile: MobieViewWrapper(
            child: MobileView(),
          ),
        ),
      ),
    );
  }
}
