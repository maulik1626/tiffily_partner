import 'package:flutter/material.dart';
import 'package:tiffily_1/customs/app_colors.dart';
import 'package:tiffily_1/customs/custom_fonts.dart';
import 'package:tiffily_1/widgets/dashboard_card.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({super.key});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 20.0),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffA5A5A5).withOpacity(0.25),
            blurRadius: 2.0,
            spreadRadius: 2.0,
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              padding:
                  const EdgeInsets.only(top: 17.0, left: 20.0, right: 20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Order Id: 110223987',
                        style: xsFontStyle,
                      ),
                      Container(
                        width: 150,
                        alignment: Alignment.centerRight,
                        child: const Text(
                          '23 May 2023, Monday',
                          style: xsFontStyle,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Text>[
                      const Text(
                        '2 x Kathiyawadi Thali',
                        style: xsFontStyle,
                      ),
                      Text(
                        'Cooking Instructions :',
                        style:
                            xsFontStyle.copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            const TextSpan(
                              text: '₹ 200',
                              style: xsFontStyle,
                            ),
                            TextSpan(
                              text: ' Paid Online',
                              style: xsFontStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: 150,
                        child: Text(
                          'Please add more salad.',
                          style: xsFontStyle.copyWith(
                            fontStyle: FontStyle.italic,
                            color: Colors.red,
                          ),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Order Status',
                      style: sFontStyle.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.highlightColor2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: const CardBottomButton(tagMessage: 'View order details'),
            ),
          )
        ],
      ),
    );
  }
}
