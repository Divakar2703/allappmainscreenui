import 'package:flutter/material.dart';

class Categories_Widget2 extends StatefulWidget {
  const Categories_Widget2({Key? key}) : super(key: key);

  @override
  State<Categories_Widget2> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<Categories_Widget2> {
  final List<Map<String, String>> categories = [
    {"icon": 'assets/am.png', "label": "MART"},
    {"icon": 'assets/aaa.png', "label": "TRAVEL"},
    {"icon": 'assets/ap.png', "label": "FOOD"},
    {"icon": 'assets/ac.png', "label": "RIDE"},
    {"icon": 'assets/ammm.png', "label": "MATRIMO"},
    {"icon": 'assets/ajj.png', "label": "JOBS"},
    {"icon": 'assets/ass.png', "label": "STUDY"},
    {"icon": 'assets/as.png', "label": "SERVICE"},
    // Add more categories as needed
  ];

  /// Function to generate gradient colors based on index
  LinearGradient _getGradient(int index) {
    switch (index % 8) {
      case 0:
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff95c97b),
            Color(0xffdbf8cd)],
        );
      case 1:
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff6eb1fa),
            Color(0xffc9dbef)],
        );
      case 2:
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFfcb779),
            Color(0xffefd6bf)],
        );
      case 3:
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffe88b7c),
            Color(0xffeab8b0)],
        );
      case 4:
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xfffaf099),
            Color(0xfffffdea)],
        );
      case 5:
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff7174a6),
            Color(0xffddddf8)],
        );
      case 6:
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff73dedc),
            Color(0xffd2f6f6)],

        );
      case 7:
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFead29e),
            Color(0xffe5dcc9)],
        );
      default:
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [Colors.grey, Colors.grey],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 2.8, // Adjust aspect ratio as needed
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: _getGradient(index),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Image.asset(
                        category["icon"]!,
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      category["label"]!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13, // Adjust font size as needed
                        fontWeight: FontWeight.w500,
                        color: Colors.black87, // Text color on gradient background
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
