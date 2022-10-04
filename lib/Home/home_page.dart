import 'package:flutter/material.dart';
import 'package:food_app/Constants/common_style_widgets.dart';
import 'package:food_app/Controller/categories_data.dart';
import 'package:food_app/Controller/restaurant_data.dart';
import 'package:food_app/Constants/constants.dart';
import 'package:food_app/Home/home_page_ui_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Builder(builder: (context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: darkColor,
                      ),
                    );
                  }),
                  searchTextField(width),
                  searchFilterButton(context, () {}),
                ],
              ),
            ]),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: darkColor,
                ),
                child: Column(
                  verticalDirection: VerticalDirection.up,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //TODO ALL SHOULD BE REPLACED
                    Text(
                      'isemail@example.com',
                      style: textStyle(interFont, Colors.white),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      'Full name',
                      style: textStyle(interFont, Colors.white),
                    ),
                    SizedBox(height: height * 0.03),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: darkColor,
                ),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: darkColor,
                ),
                title: const Text('Setting'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: darkColor,
                ),
                title: const Text('About'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: ButtomNavigation(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              true // TODO: VARIABLE TO SHOW DISCOUNT WIDGET
                  ? discountAlert('assets/images/discountImage.png', '', height,
                      width, () {})
                  : const SizedBox(),
              SizedBox(height: height - height / 1.03),
              textHeader(width, 'Categories', () {
                // TODO: SH0W ALL PAGE OF CATEGORIES
              }),
              SizedBox(height: height * 0.01),
              SizedBox(
                height: height * 0.125,
                width: width * 0.9,
                child:
                    categoriesUI(CategoriesData.categoriesDataList, height, () {
                  //TODO
                  //FUNCTION TO GO TO THE PAGE OF A CATEGORIE
                  //PASS THE DATA OF THE CATEGORIE TO THE PAGE
                }),
              ),
              SizedBox(height: height * 0.01),
              textHeader(width, 'Restaurant', () {
                //SHOW ALL PAGE RESTAURANTS
              }),
              SizedBox(height: height * 0.01),
              SizedBox(
                width: width * 0.9,
                child: retaurantCard(
                    RestaurantData.restaurantsDataList, height, width),
              )
            ],
          ),
        ),
      ),
    );
  }
}
