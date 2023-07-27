import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tiffily_1/customs/app_colors.dart';
import 'package:tiffily_1/customs/custom_fonts.dart';

class LocationAddressBar extends StatelessWidget {
  const LocationAddressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          if (kDebugMode) {
            print('Change Location');
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Pickup Address',
                  style: mFontStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.location_pin,
                  color: AppColors.secondaryColor,
                )
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              width: 250,
              child: Text(
                '913, Atma House, Opp Old RBI, Ashram',
                style: sFontStyle.copyWith(color: AppColors.fontGreyColor),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
