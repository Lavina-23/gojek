import 'package:flutter/material.dart';
import 'package:gojek/components/access.dart';
import 'package:gojek/components/goclub.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/components/icons_menu.dart';
import 'package:gojek/components/news.dart';
import 'package:gojek/components/search.dart';
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
            const Search(), Gopay(), IconMenu(), Goclub(), Access(), News()],
        ),
      ),
    );
  }
}
