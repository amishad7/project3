import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    BoxDecoration boxStyle({required Color color}) => BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          // border: Border.all(color: Colors.deepPurple, width: 3),
        );

    List<Container> cards = [
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 20),
        decoration: boxStyle(
          color: Color(0xff2c4c7e),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 10,
              width: MediaQuery.sizeOf(context).width / 1.4,
              decoration: BoxDecoration(
                color: Color(0xffb8dcf3),
                borderRadius: BorderRadius.circular(34),
              ),
              child: L,
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        decoration: boxStyle(
          color: Color(0xff517dac),
        ),
        child: const Icon(
          Icons.calendar_month,
          size: 78,
        ),
      ),
      Container(
        alignment: Alignment.center,
        decoration: boxStyle(
          color: Color(0xffb8dcf3),
        ),
        child: const Text('3'),
      )
    ];
    return Scaffold(
      backgroundColor: const Color(0xff010f22),
      body: CardSwiper(
        cardsCount: cards.length,
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
            cards[index],
      ),
    );
  }
}
