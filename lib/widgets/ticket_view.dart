import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:booktickets/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketItem;
  const TicketView({Key? key, required this.ticketItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // Blue Part
            Container(
            decoration: BoxDecoration(
              color: const Color(0xff526799),
              borderRadius: BorderRadius.only(topLeft:  Radius.circular(21), topRight: Radius.circular(21))
            ),
            padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticketItem['from']['code'],style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                // print("The widtj is ${constraints.constrainWidth()}");
                                return Flex(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                    width: 3,height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white
                                  ),),
                                  )),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,))),
                        ],
                      )),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(ticketItem['to']['code'],style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100,child: Text(
                        ticketItem['from']['name'], style: Styles.headlineStyle4.copyWith(color: Colors.white),
                      ),),
                      Text( ticketItem['flying_time'], style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      SizedBox(width: 100,child: Text(
                        ticketItem['to']['name'], textAlign: TextAlign.end, style: Styles.headlineStyle4.copyWith(color: Colors.white),
                      ),),
                    ],
                  )
                ],
              ),
            ),
            // Orange Part
            Container(
              color: Styles.orangeColor,//const Color(0xfff37b67),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight:Radius.circular(10), bottomRight: Radius.circular(10) )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white
                              ),
                            ),
                          )),
                        );
                      },

                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10), bottomLeft: Radius.circular(10) )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Bottom Part
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(bottomLeft:  Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.only(left: 16,top: 10,bottom: 16,right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticketItem['date'], style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("DATE", style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticketItem['departure_time'], style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Departure time", style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticketItem['number'].toString(), style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Number", style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
