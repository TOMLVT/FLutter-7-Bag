import 'package:bag_app/Home/components/categories.dart';
import 'package:bag_app/Home/components/item_card.dart';
import 'package:bag_app/Model/Product.dart';
import 'package:bag_app/constrant.dart';
import 'package:bag_app/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/back.svg"),
        ),
        actions: <Widget> [
          IconButton(
              onPressed: (){},
              icon: SvgPicture.asset("assets/icons/search.svg" , color: kTextColor,),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/cart.svg" , color: kTextColor,),
          ),
          SizedBox(width: kDefaultPaddin / 2,)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text("Túi đeo phụ nữ" ,  style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),),
          ),
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 2/3,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index])))
                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
