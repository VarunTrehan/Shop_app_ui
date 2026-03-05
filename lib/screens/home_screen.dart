import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Category.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/components/categories.dart';
import 'package:shop_app/screens/components/new_arrival.dart';
import 'package:shop_app/screens/components/popular.dart';
import 'package:shop_app/screens/components/product_card.dart';
import 'package:shop_app/screens/components/search_form.dart';
import 'package:shop_app/screens/components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "New Janta Nagar,LDH",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const Text("best Outfits for you", style: TextStyle(fontSize: 18)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const SizedBox(height: defaultPadding),
            const NewArrival(),
            const SizedBox(height: defaultPadding),
            const Popular(),
          ],
        ),
      ),
    );
  }
}