import 'package:anna_hult/common/ui/ui_helper.dart';
import 'package:anna_hult/modules/seller/features/register/view/register_page.dart';
import 'package:anna_hult/modules/seller/features/seller_homepage/view/seller_homepage.dart';
import 'package:anna_hult/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //   colors: [
        //     Colors.lightGreen[500],
        //     Colors.yellow[500],
        //   ],
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        // )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              elHeightSpan,
              Image.asset(
                "assets/images/anna_logo.png",
                height: Get.height * 0.2,
              ),
              lHeightSpan,
              Text(
                "\"Good for your goods\"",
                style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: kPrimaryTextColor),
                ),
              ),
              elHeightSpan,
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
              elHeightSpan,
              ButtonTheme(
                minWidth: Get.width,
                height: Get.height * 0.07,
                buttonColor: kButtonColor1,
                child: RaisedButton(
                  onPressed: () => Get.offAll(SellerHomePage()),
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              lHeightSpan,
              GestureDetector(
                onTap: () => Get.to(RegisterPage()),
                child: Text(
                  "New here? Create New Account",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: kPrimaryTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
