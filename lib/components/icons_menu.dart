import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/datas/icons.dart';
import 'package:gojek/theme.dart';

class IconMenu extends StatelessWidget {
  const IconMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          color:
                              icon.icon == 'goclub' ? Colors.white : icon.color,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/${icon.icon}.svg',
                          color: icon.icon == 'goclub'
                              ? icon.color
                              : icon.icon == 'other'
                                  ? dark2
                                  : Colors.white,
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
          ],
        ),
      ),
    );
  }
}
