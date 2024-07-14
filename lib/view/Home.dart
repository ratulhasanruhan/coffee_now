import 'package:coffee_now/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 100,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/coffee_icon.svg',
              height: 30,
              width: 30,
            ),
            SizedBox(width: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CoffeeNow',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                Text(
                  'Brew it!',
                  style: TextStyle(
                    color: Color(0xFFC0C0C0),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Badge(
                label: Container(
                  padding: EdgeInsets.all(1),
                ),
                smallSize: 5,
                largeSize: 10,
                backgroundColor: primaryColor,
                offset: Offset(0, 0),
                child: SvgPicture.asset(
                  'assets/shopping_bag.svg',
                  height: 30,
                  width: 30,
                ),
              )
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 38,
            left: -20,
            child: Image.asset(
              'assets/coffee_shade.png',
              height: 220,
              width: 220,
              opacity: const AlwaysStoppedAnimation(.028),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 38),
                child: Text(
                  'Enjoy coffee\nany time',
                  style: TextStyle(
                    color: Color(0xFF252525),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 1000,
                  decoration: ShapeDecoration(
                    color: Color(0xFF01895A),
                    shape: OvalBorder(),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
