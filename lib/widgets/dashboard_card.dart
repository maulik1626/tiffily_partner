import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tiffily_1/customs/app_colors.dart';
import 'package:tiffily_1/customs/custom_fonts.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      height: 154,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondaryColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 15.0,
            spreadRadius: 5.0,
            color: AppColors.fontBlackColor.withOpacity(0.15),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '32',
                      style: xlFontStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'orders',
                      style: xsFontStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '₹ 3,200',
                      style: xlFontStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'earned',
                      style: xsFontStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 24.0, top: 12.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                          'assets/images/dashboard_card_grapgs.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                if (kDebugMode) {
                  print('View Sales Report');
                }
              },
              child: Container(
                height: 56.0,
                decoration: const BoxDecoration(
                  color: AppColors.highlightColor2,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                  ),
                ),
                child: const CardBottomButton(
                  tagMessage: 'View Sales Report',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class CardBottomButton extends StatelessWidget {
  /// This class's iconn data is set to 'Icons.arrow_forward' by default.
  final String tagMessage;
  final IconData iconn;

  const CardBottomButton({
    super.key,
    required this.tagMessage,
    this.iconn = Icons.arrow_forward,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            tagMessage,
            style: sFontStyle.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(
            iconn,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
