import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/theme.dart';

class Goclub extends StatelessWidget {
  const Goclub({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 15, right: 15),
      child: Container(
        height: 65,
        width: 345,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xFFEAF3F6), Color(0xFFFFFFFF)]),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFFE8E8E8))),
        child: Stack(
          children: [
            Positioned(
                top: 4,
                bottom: 4,
                left: 4,
                child: SvgPicture.asset('assets/icons/dots.svg')),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    height: 40,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '117 XP lagi ada Harta Karun',
                          style: semibold14,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          child: LinearProgressIndicator(
                            value: .8,
                            color: green1,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  SvgPicture.asset(
                    'assets/icons/left.svg',
                    color: dark1,
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
