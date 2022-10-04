import 'package:flutter/material.dart';
import 'package:food_app/Constants/common_style_widgets.dart';
import 'package:food_app/Constants/constants.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({Key? key}) : super(key: key);

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Basket',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          label: 'Profile',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: darkColor,
      unselectedItemColor: greyColor,
      onTap: (index) {},
    );
  }
}

Padding searchTextField(double width) {
  return Padding(
    padding: const EdgeInsets.only(right: 5.0),
    child: Container(
      width: width - width / 3,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(33, 49, 49, 49),
              blurRadius: 3.0,
            ),
          ]),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          hintText: 'Search Your food or Restaurant',
          hintStyle: const TextStyle(fontFamily: interFont, fontSize: 10),
        ),
      ),
    ),
  );
}

Padding searchFilterButton(BuildContext context, onpressed) {
  return Padding(
    padding: const EdgeInsets.only(left: 6.0),
    child: SizedBox(
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width / 1.16,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onpressed,
        child: const Icon(
          Icons.tune,
          color: darkColor,
        ),
      ),
    ),
  );
}

Stack discountAlert(String imagePath, String discountPercentage, double height,
    double width, claimOnpressed) {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
            height: height - height / 1.26,
            width: width - width / 10,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            left: width - width / 1.04, top: height - height / 1.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Get Special Discount',
              style: TextStyle(
                  color: Colors.white, fontFamily: interFont, fontSize: 20),
            ),
            SizedBox(height: height - height / 1.02),
            Text(
              'up to $discountPercentage',
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: inriaSerifFont,
                  fontSize: 35),
            ),
            SizedBox(height: height - height / 1.02),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: claimOnpressed,
              child: const Text(
                'Claim Voucher',
                style: TextStyle(
                  color: darkColor,
                  fontFamily: interFont,
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}

Row textHeader(double width, String text, ontap) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: width - width / 1.054),
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: interFont, fontSize: 19, fontWeight: FontWeight.w500),
        ),
      ),
      SizedBox(width: width - width / 2.19),
      GestureDetector(
        onTap: ontap,
        child: const Text(
          'Show all',
          style: TextStyle(
              color: Colors.blue,
              fontFamily: interFont,
              fontWeight: FontWeight.w500),
        ),
      )
    ],
  );
}

ListView categoriesUI(
    List<Map<String, String>> categorieList, double height, ontap) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemCount: categorieList.length,
    itemBuilder: ((context, index) {
      return GestureDetector(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: FadeInImage(
                      height: height - height / 1.09,
                      width: height - height / 1.09,
                      image: NetworkImage(
                        categorieList[index]['image'] as String,
                      ),
                      placeholder:
                          const AssetImage('assets/images/greyImage.png')),
                ),
              ),
              SizedBox(height: height - height / 1.01),
              Text(
                categorieList[index]['categorie'] as String,
                style: const TextStyle(
                  color: darkColor,
                  fontFamily: interFont,
                ),
              )
            ],
          ),
        ),
      );
    }),
  );
}

Widget retaurantCard(
    List<Map<String, dynamic>> restaurantsList, double height, double width) {
  return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: restaurantsList.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: height * 0.17,
          width: width * 0.9,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: FadeInImage(
                        height: height * 0.17,
                        width: height * 0.17,
                        image: NetworkImage(
                          restaurantsList[index]['image'] as String,
                        ),
                        placeholder:
                            const AssetImage('assets/images/greyImage.png')),
                  ),
                ),
                SizedBox(width: width * 0.05),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurantsList[index]['restaurantName'],
                      style: textStyle(interFont, darkColor,
                          fontweight: FontWeight.w500, fontsize: 17),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Text(
                          restaurantsList[index]['stars'],
                          style: textStyle(interFont, greyColor),
                        )
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.schedule,
                          color: greyColor,
                          size: 13,
                        ),
                        SizedBox(
                          width: width - width / 1.01,
                        ),
                        Text(
                          restaurantsList[index]['timeDeleverie'],
                          style: textStyle(interFont, greyColor),
                        )
                      ],
                    ),
                  ],
                ),
                restaurantsList[index]['isnew']
                    ? Container(
                        height: height * 0.04,
                        width: width * 0.15,
                        decoration: const BoxDecoration(
                          color: darkColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(19),
                            topRight: Radius.circular(19),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'NEW',
                            style: textStyle(interFont, Colors.white,
                                fontweight: FontWeight.w700),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        );
      });
}
