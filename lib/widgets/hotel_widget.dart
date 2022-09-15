import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';

class HotelWidget extends StatelessWidget {
  final Map<String, dynamic> item;
  const HotelWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      width: MediaQuery.of(context).size.width*0.6,
      height: 350,
      decoration: BoxDecoration(
        color: Styles.greenColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 2,
            spreadRadius: 1
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/${item['image']}")
              )
            ),
          ),
          const Gap(15),
          Text(item['place'], style: Styles.headlineStyle2.copyWith(color: Styles.khakiColor)),
          Text(item['destination'],style: Styles.headlineStyle3.copyWith(color: Colors.white)),
          Text("Rs.${item['price']}/night", style: Styles.headlineStyle1.copyWith(color: Styles.khakiColor)),
        ],
      ),
    );
  }
}
