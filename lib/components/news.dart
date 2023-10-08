import 'package:flutter/material.dart';
import 'package:gojek/datas/news.dart';
import 'package:gojek/theme.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/gopaylater.png',
                height: 14,
                width: 98,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Lebih hemat pake GoPayLater 🤩',
                style: bold16,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                style: regular14.copyWith(color: dark2),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        // News
        ...news.map((news) => Padding(
            padding: const EdgeInsets.only(bottom: 24, left: 15, right: 15),
            child: Container(
              height: 285,
              width: 343,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE8E8E8)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/${news.image}'),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          news.title,
                          style: bold16,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(news.desc,
                            style: regular14.copyWith(color: dark2)),
                      ],
                    ),
                  )
                ],
              ),
            )
          )
        )
      ],
    );
  }
}
