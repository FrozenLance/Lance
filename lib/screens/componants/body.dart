import 'package:flutter/material.dart';
import 'package:grocaryapp/constant.dart';
import 'package:grocaryapp/models/product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Grocery",
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontFamily: 'Lobster',
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: GridView.builder(
            //grid view for products
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //no of columns
              childAspectRatio:
                  0.88, //distance betn the child larger the accept ratio less the distn betn the products
            ),
            itemBuilder: (context, index) => ItemCard(product: products[index]),
          ),
        ),
      ],
    );
  }
}

//class for the products
class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({
    this.product,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              height: 200,
              width: 160,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: product.color,
              ),
              child: Column(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(product.image)),
                  Container(
                    height: 20,
                  ),
                  Text(
                    product.title,
                    style: TextStyle(
                        fontFamily: 'Merri',
                        fontSize: 15,
                        color: Colors.black54),
                  ),
                  Text(product.prize),
                ],
              )),
        )
      ],
    );
  }
}

//for categories
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['vegetables', 'fruits'];

  //initally item 1 is selected
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 25,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildcategory(index),
        ));
  }

  //
  Widget buildcategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //categoryname
            Text(
              categories[index],
              style: TextStyle(
                fontFamily: 'Merri',
                color: selectedindex == index ? kTextColor : kTextLightColor,
              ),
            ),
            //for the line bellow the category
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4),
              height: 2,
              width: 30,
              color: selectedindex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
