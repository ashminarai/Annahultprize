import 'package:anna_hult/common/ui/ui_helper.dart';
import 'package:anna_hult/modules/buyer/features/buyer_homepage/view/buyer_homepage.dart';
import 'package:anna_hult/modules/seller/data/register_controller/register_page_controller.dart';
import 'package:anna_hult/modules/seller/features/seller_homepage/view/seller_homepage.dart';
import 'package:anna_hult/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  final RegisterPageController _registerPageController =
      Get.put(RegisterPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            elHeightSpan,
            mHeightSpan,
            Text(
              "Registration Form",
              style: GoogleFonts.montserrat(
                textStyle: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kPrimaryTextColor),
              ),
            ),
            lHeightSpan,
            TextField(
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: kPrimaryTextColor,
                      fontSize: 15.0,
                    ),
              ),
              decoration: InputDecoration(
                hintText: "Your name",
                hintStyle:
                    GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.0)),
              ),
            ),
            mHeightSpan,
            TextField(
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: kPrimaryTextColor,
                      fontSize: 15.0,
                    ),
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "E-mail",
                hintStyle:
                    GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.0)),
              ),
            ),
            mHeightSpan,
            TextField(
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: kPrimaryTextColor,
                      fontSize: 15.0,
                    ),
              ),
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle:
                    GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.0)),
              ),
              obscureText: true,
              obscuringCharacter: '*',
            ),
            mHeightSpan,
            TextField(
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: kPrimaryTextColor,
                      fontSize: 15.0,
                    ),
              ),
              decoration: InputDecoration(
                hintText: "Confirm Password",
                hintStyle:
                    GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.0)),
              ),
              obscureText: true,
              obscuringCharacter: '*',
            ),
            mHeightSpan,
            GetBuilder<RegisterPageController>(
              builder: (_registerPageController) {
                return _registerPageController.dropDown();
              },
            ),
            mHeightSpan,
            GetBuilder<RegisterPageController>(
              builder: (_registerPageController) {
                return _registerPageController.checkedBox();
              },
            ),
            mHeightSpan,
            ButtonTheme(
              minWidth: Get.width,
              height: Get.height * 0.07,
              buttonColor: kButtonColor1,
              child: RaisedButton(
                onPressed: () {
                  if (_registerPageController.agree) {
                    _registerPageController.value == 0
                        ? Get.offAll(BuyerHomePage())
                        : Get.offAll(SellerHomePage());
                  } else {
                    Get.snackbar(
                      "Invalid Attempt!",
                      "Terms and Conditions are not agreed.",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
                child: Text(
                  "Register",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
