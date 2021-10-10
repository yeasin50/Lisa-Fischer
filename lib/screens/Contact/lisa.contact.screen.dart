import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../widgets/widgets.dart';
import 'Contact.dart';

class LisaContactPage extends StatelessWidget {
  static final String routeName = "/contact_page";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Responsive(
        mobile: MobieViewWrapper(
          child: MobileView(),
        ),
        tablet: TabletViewWrapper(
          child: TabletView(),
        ),
        desktop: DesktopViewWrapper(
          child: DesktopView(),
        ),
      ),
    ));
  }
}