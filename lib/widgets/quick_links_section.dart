import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tiffily_1/customs/app_colors.dart';
import 'package:tiffily_1/customs/custom_fonts.dart';
import 'package:tiffily_1/data/quick_links_data.dart';

class QuickLinksSection extends StatelessWidget {
  const QuickLinksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: quickLinks.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                if (kDebugMode) {
                  print(
                      '${quickLinks[index].id} : ${quickLinks[index].desc} pressed');
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 56,
                          width: 56,
                          margin: const EdgeInsets.only(bottom: 13.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 20.0,
                                  color:
                                      const Color(0xffA5A5A5).withOpacity(0.25),
                                )
                              ]),
                          child: Icon(
                            quickLinks[index].icon,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: Text(
                            quickLinks[index].name,
                            style: sFontStyle.copyWith(letterSpacing: 0.5),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
