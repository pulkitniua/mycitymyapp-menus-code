import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobile_app/components/drawer/citizen/drawer_widget.dart';
import 'package:mobile_app/config/base_config.dart';
import 'package:mobile_app/controller/auth_controller.dart';
import 'package:mobile_app/controller/location_controller.dart';
import 'package:mobile_app/screens/citizen/home/home_screen.dart';
import 'package:mobile_app/screens/citizen/home/my_certificates/my_certificates.dart';
import 'package:mobile_app/screens/citizen/home_location_choose/home_location_choose.dart';
import 'package:mobile_app/utils/utils.dart';
import 'package:mobile_app/widgets/bottomNavBarWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  final cityController = Get.find<CityController>();
  final _authController = Get.find<AuthController>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int selectedTab = 0;
  List<Widget> pages = [
    const HomeScreen(),
    //const HomeMyPayments(),
    const HomeLocationChoose(),
    // const SizedBox.shrink(),
    const HomeMyCertificates(),
    //const ProfileScreen(),
  ];

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );
    super.initState();
    if (!_authController.isValidUser) return;
    cityController.fetchSelectedCity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBody: true,
      endDrawer: DrawerWidget(),
      body: pages[selectedTab],
      resizeToAvoidBottomInset: false,
      floatingActionButton: _authController.isValidUser
          ? IconButton(
              onPressed: () async {
                const url = 'https://upyog.niua.org/digit-ui/citizen/login';
                await launchURL(
                  url,
                  mode: LaunchMode.externalApplication,
                );
              },
              icon: Icon(
                Icons.add_circle_outline,
                size: 40.sp,
                color: BaseConfig.appThemeColor1,
              ),
            )
          : const SizedBox.shrink(),
      bottomNavigationBar: NavBar(
        pageIndex: selectedTab,
        onTap: (index) {
          if (index == 3) {
            _scaffoldKey.currentState?.openEndDrawer();
          } else {
            setState(() {
              selectedTab = index;
              dPrint(selectedTab);
            });
          }
        },
      ),
    );
  }
}
