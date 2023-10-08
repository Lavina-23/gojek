import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/components/header.dart';
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
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: dark3),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/search.svg',
                            color: dark1,
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cari layanan, makanan, & tujuan',
                            style: regular14.copyWith(color: dark3),  
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35/2),
                          ),
                          clipBehavior: Clip.hardEdge, 
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                            child: Container(
                              width: 16,
                              height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35/2),
                              color: const Color(0xFFD1E7EE),
                            ),
                          clipBehavior: Clip.hardEdge,
                          child: SvgPicture.asset(
                            'assets/icons/goclub.svg',
                            color: blue2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}