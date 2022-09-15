import 'package:booktickets/utils/app_info.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:booktickets/widgets/hotel_widget.dart';
import 'package:booktickets/widgets/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import "package:velocity_x/velocity_x.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Good Morning"
                          .text
                          .fontWeight(FontWeight.w500)
                          .size(22)
                          .gray400
                          .make(),
                      const Gap(5),
                      Text(
                        "Book Tickets",
                        style: Styles.headlineStyle1,
                      )
                    ],
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/img/img_1.png"))),
                  )
                ],
              ),
              const Gap(25),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205)),
                    "Search"
                        .text
                        .size(20)
                        .gray400
                        .fontWeight(FontWeight.w500)
                        .make(),
                  ],
                ),
              ).p(12).backgroundColor(Color(0xfff4f6fd)),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Flights",
                    style: Styles.headlineStyle2,
                  ),
                  InkWell(
                    onTap: () {
                      print("You are tapped");
                    },
                    child: Text(
                      "View all",
                      style: Styles.textStyle
                          .copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              ),
            ],
          ).px20(),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketItem.map((item) => TicketView(ticketItem: item)).toList(),
            ),
          ),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hotels",
                style: Styles.headlineStyle2,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "View all",
                  style: Styles.textStyle
                      .copyWith(color: Styles.primaryColor),
                ),
              )
            ],
          ).px(20),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: itemList.map((singeItem) => HotelWidget(item: singeItem)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
