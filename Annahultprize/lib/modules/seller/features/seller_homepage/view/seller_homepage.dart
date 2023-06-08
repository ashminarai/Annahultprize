import 'package:anna_hult/common/ui/ui_helper.dart';
import 'package:anna_hult/core/logger/logger.dart';
import 'package:anna_hult/modules/seller/data/seller_home_page_controller/carousel.dart';
import 'package:anna_hult/modules/seller/data/seller_home_page_controller/dummy_data.dart';
import 'package:anna_hult/modules/seller/data/seller_home_page_controller/seller_home_page_controller.dart';
import 'package:anna_hult/modules/seller/features/seller_homepage/widget/analytics_widget.dart';
import 'package:anna_hult/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SellerHomePage extends StatelessWidget {
  final SellerHomepageController _sellerHomepageController =
      Get.put(SellerHomepageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 8.0, left: 5.0, right: 5.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              lHeightSpan,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _buildSellerProfile(),
              ),
              mHeightSpan,
              Text(
                "आर्थिक विवरण",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: kTertiaryTextColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              mHeightSpan,
              Row(
                children: [
                  SizedBox(width: 8.0),
                  AnalyticsWidget(
                    color: Color(0xFF4a9c17),
                    icon: FontAwesome.arrow_up,
                    averageNum: 92.7,
                    givenNumber: 70237,
                    title: "लेनदेन सफल दर",
                  ),
                  mWidthSpan,
                  AnalyticsWidget(
                    color: Color(0xFF2f88ba),
                    icon: FontAwesome.arrow_down,
                    averageNum: 98,
                    givenNumber: 2,
                    time: true,
                    title: "प्रतिक्रिया दर",
                  ),
                  mWidthSpan,
                  AnalyticsWidget(
                    color: Color(0xFF9774f2),
                    icon: FontAwesome.money,
                    averageNum: 53.7,
                    givenNumber: 20237,
                    title: "नाफा",
                  ),
                ],
              ),
              mHeightSpan,
              Text(
                "विक्रेता अपडेट",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: kTertiaryTextColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              mHeightSpan,
              CarouselEffect(
                carouselSlider: _sellerHomepageController.carouselController,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSellerProfile() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFcee397),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF556052),
            offset: Offset(0.0, 0.1),
            blurRadius: 10.0,
          )
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "श्री मुन्ना त्रिपाठी",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: kTertiaryTextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    "गाइघाट, उदयपुर",
                    style: TextStyle(
                      color: kTertiaryTextColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "९८७६५४३२१०",
                    style: TextStyle(
                      color: kTertiaryTextColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("assets/images/anna_logo.png"),
                radius: 40.0,
              ),
            ],
          ),
          mHeightSpan,
          RaisedButton(
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            onPressed: () {},
            child: Text(
              "लेनदेन ईतिहास",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: kPrimaryColorLight,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
