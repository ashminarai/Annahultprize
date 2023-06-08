import 'package:anna_hult/modules/seller/features/login/view/login_page.dart';
import 'package:anna_hult/theme/colors.dart';
import 'package:anna_hult/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';

import 'modules/buyer/features/buyer_homepage/view/buyer_homepage.dart';
import 'modules/seller/features/seller_homepage/view/seller_homepage.dart';

void main() {
  runApp(
    AnnaMain(),
  );
}

class AnnaMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: kLightTheme,
      title: "ANNA : Healthy Food for Healthy Lifestyle",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        backgroundColor: kPrimaryColor,
        seconds: 0,
        image: Image.asset("assets/images/anna_logo.png"),
        photoSize: 80.0,
        loadingText: Text("Anna: Bla Bla Bla"),
        loaderColor: kButtonColor2,
        navigateAfterSeconds: BuyerHomePage(),
      ),
    );
  }
}

//montserrat
//poppins
