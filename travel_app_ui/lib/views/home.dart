import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffold,
      body: Stack(
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //appBar
                  AppBar(),
                  // catalog hotels
                  SizedBox(height: 40),
                  CategoryHotelHeader(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HotelItemCard(
                        image: "assets/img/hotel01.jpg",
                        title: "Merilon Hotel",
                        description: "1 Fullerton Rd Test adrees 1",
                        price: 500,
                        rating: 4.5,
                      ),
                      HotelItemCard(
                        image: "assets/img/hotel02.jpg",
                        title: "Universal Stuation",
                        description: "1 Fullerton Rd Test adrees 1",
                        price: 500,
                        rating: 4.5,
                      ),
                    ],
                  )
                  // fixed bottom navigation
                ],
              ),
            ),
          ),
          BottomNavigationSheet()
        ],
      ),
    );
  }
}

class BottomNavigationSheet extends StatefulWidget {
  const BottomNavigationSheet({
    super.key,
  });

  @override
  State<BottomNavigationSheet> createState() => _BottomNavigationSheetState();
}

class _BottomNavigationSheetState extends State<BottomNavigationSheet> {
  int curentIndex = 0;

  changeIndex(index) {
    setState(() {
      curentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        // height: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: AppColors.light,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 5),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                  color: AppColors.text,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Category",
              style: TextStyle(
                color: AppColors.text,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CategoryItem(
                  title: "Restaurants",
                  icon: Icon(
                    Icons.restaurant_rounded,
                    color: AppColors.light,
                  ),
                  color: Colors.deepPurple,
                ),
                CategoryItem(
                  title: "Hotel",
                  icon: const Icon(
                    Icons.hotel_rounded,
                    color: AppColors.light,
                  ),
                  color: Colors.yellow[800],
                ),
                const CategoryItem(
                  title: "Gas",
                  icon: Icon(
                    Icons.local_gas_station,
                    color: AppColors.light,
                  ),
                  color: Colors.red,
                ),
                const CategoryItem(
                  title: "Coffee",
                  icon: Icon(
                    Icons.coffee_rounded,
                    color: AppColors.light,
                  ),
                  color: AppColors.main,
                ),
                const CategoryItem(
                  title: "Food",
                  icon: Icon(
                    Icons.food_bank_rounded,
                    color: AppColors.light,
                  ),
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_rounded),
                fillColor: AppColors.scaffold.withOpacity(0.6),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: const EdgeInsets.only(
                  left: 15,
                  bottom: 11,
                  top: 11,
                  right: 15,
                ),
                hintText: "Search Place",
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => changeIndex(0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/icons/home.png",
                        height: 30,
                      ),
                      const SizedBox(height: 10),
                      Visibility(
                        visible: curentIndex == 0,
                        child: Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColors.main,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => changeIndex(1),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/icons/heart.png",
                        height: 30,
                      ),
                      const SizedBox(height: 10),
                      Visibility(
                        visible: curentIndex == 1,
                        child: Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColors.main,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => changeIndex(2),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/icons/location.png",
                        height: 30,
                      ),
                      const SizedBox(height: 10),
                      Visibility(
                        visible: curentIndex == 2,
                        child: Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColors.main,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => changeIndex(3),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/icons/profile.png",
                        height: 30,
                      ),
                      const SizedBox(height: 10),
                      Visibility(
                        visible: curentIndex == 3,
                        child: Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColors.main,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final Color? color;
  const CategoryItem({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: icon,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            color: AppColors.textSecondary,
          ),
        )
      ],
    );
  }
}

class HotelItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;
  final double rating;
  const HotelItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.light,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: AppColors.main,
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(
                Icons.location_on_rounded,
                size: 15,
              ),
              Expanded(
                child: Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppColors.text,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${price.toString()}",
                style: const TextStyle(
                  color: AppColors.text,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow[800],
                    size: 12,
                  ),
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      color: AppColors.text,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoryHotelHeader extends StatelessWidget {
  const CategoryHotelHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Nearby Destination",
          style: TextStyle(
            color: AppColors.text,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        Text(
          "See More",
          style: TextStyle(
            color: AppColors.textSecondary,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Curent Location"),
            SizedBox(height: 10),
            Text(
              "Singapore",
              style: TextStyle(
                color: AppColors.text,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.light,
              child: Icon(Icons.notifications_outlined),
            ),
            SizedBox(width: 5),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/img/user.jpg"),
            ),
          ],
        )
      ],
    );
  }
}
