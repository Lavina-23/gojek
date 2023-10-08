import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/components/search.dart';
import 'package:gojek/datas/icons.dart';
import 'package:gojek/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 80,
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Search(),
            // Gopay
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                height: 96,
                decoration: BoxDecoration(
                  color: blue2,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2,
                            height: 8,
                            decoration: const BoxDecoration(color: Color(0xFFBBBBBB)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 11,
                          width: 127,
                          decoration: const BoxDecoration(
                              color: Color(0xFF9CCDDB),
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(8))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 127,
                          height: 68,
                          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/gopay.png',
                                height: 14,
                                width: 57,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Rp12.379",
                                style: bold16,
                              ),
                              Text(
                                "Klik & cek riwayat",
                                style: semibold12_5.copyWith(color: green1),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    ...gopayIcons.map((icon) => Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: SvgPicture.asset('assets/icons/${icon.icon}.svg',
                            color: blue1,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text (
                            icon.title,
                            style: semibold14.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            // Icons Menu
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 27, right: 27, bottom: 19),
              child: SizedBox(
                height: 157,
                child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 8,
                children: [
                  ...menuIcons.map((icon) => Container(
                    child: Column(
                      children: [
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: icon.icon == 'goclub'? Colors.white : icon.color,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SvgPicture.asset('assets/icons/${icon.icon}.svg',
                            color: icon.icon == 'goclub'? icon.color : icon.icon == 'other'? dark2 : Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            icon.title,
                            style: regular12_5.copyWith(color: Color(0xFF4A4A4A)),
                          )
                      ],
                    ),
                  ))
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}
