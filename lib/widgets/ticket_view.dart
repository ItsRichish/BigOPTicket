import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:booktickets/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

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
                      "NYC".text.size(21).fontWeight(FontWeight.bold).color(Colors.white).make(),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                print("The widtj is ${constraints.constrainWidth()}");
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
                      "LDN".text.size(21).fontWeight(FontWeight.bold).color(Colors.white).make(),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100,child: Text(
                        "New-York", style: Styles.headlineStyle4.copyWith(color: Colors.white),
                      ),),
                      Text("8H 30M", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      SizedBox(width: 100,child: Text(
                        "London", textAlign: TextAlign.end, style: Styles.headlineStyle4.copyWith(color: Colors.white),
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
                          Text("1 MAY", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("DATE", style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("08:00 AM", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Departure time", style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
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
