import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tiffily_1/customs/app_colors.dart';
import 'package:tiffily_1/customs/custom_fonts.dart';
import 'package:tiffily_1/widgets/dashboard_card.dart';
import 'package:tiffily_1/widgets/location_address_bar.dart';
import 'package:tiffily_1/widgets/order_card.dart';
import 'package:tiffily_1/widgets/quick_links_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const LocationAddressBar(),
              const SizedBox(height: 20.0),
              const DashboardCard(),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15.0, left: 24.0, right: 24.0, bottom: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quick Links',
                    style: mFontStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const QuickLinksSection(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today\'s Orders',
                      style: mFontStyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          print('See all orders');
                        }
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Text(
                        'See all',
                        style: xsFontStyle.copyWith(
                          color: AppColors.fontGreyColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const OrderCard(),
              Container(color: Colors.grey, height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
