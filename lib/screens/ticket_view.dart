import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/ticket_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class TicktView extends StatelessWidget {
  const TicktView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // Show the blue part of the card/ticket
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      const Spacer(),
                      TicketContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(direction: Axis.horizontal, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: List.generate((constraints.constrainWidth() / 6).floor(), (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),),
                                      )
                                      )
                                  );
                                },
                              )
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: const Icon(Icons.airplanemode_active, color: Colors.white,))),
                        ],
                      )
                      ),
                      TicketContainer(),
                      const Spacer(),
                      Text("LDN", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100, child: Text("New-York", style: Styles.headLineStyle4.copyWith(color: Colors.white,),)),
                      Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(width: 100, child: Text("London",textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white,),)),
                    ],
                  )
                ],
              ),
            ),
            // Show the orange part of the card/ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                              width: 5, height: 1, child: DecoratedBox(
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                            )));
                      },
                    ),
                  ),
                  ),
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          //  Bottom of the orange part of the card/ticket
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(bottomLeft:  Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1 May", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
                      )
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text("1 May", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                  //     Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                  //     Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  //     Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  //     Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  //   ],
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
