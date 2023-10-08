import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/datas/icons.dart';
import 'package:gojek/theme.dart';

class Gopay extends StatelessWidget {
  const Gopay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(8))),
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
                        child: SvgPicture.asset(
                          'assets/icons/${icon.icon}.svg',
                          color: blue1,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        icon.title,
                        style: semibold14.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
