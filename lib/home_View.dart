import 'package:allappmainscreenui/slider.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.5,
                      ),
                    ),
                    Text(
                      'Rahul Singh',
                      style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87
                      ),
                      textAlign: TextAlign.right, // Align the subtitle text to the right
                    ),
                  ],
                ),
                trailing: GestureDetector(
                  onTap: () {
                    // Define what happens when the trailing icon is tapped
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: ClipOval(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4,right: 4,top: 4),
                          child: Image.asset('assets/a.png',),
                        ),
                      ),
                    ),
                  ),
                ),
                leading: Image.asset('assets/ag.png'),

              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.green,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Chittorgarh',
                                style: TextStyle(
                                    fontSize: 15.5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.black87,
                                size: 28,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Gandhi Road, Chittorgarh, Rajsthan 312001',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.only(left: 12, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.5), // Shadow color
                            spreadRadius: 1, // Spread radius
                            blurRadius: 4, // Blur radius
                            offset: Offset(1, 1), // Offset in x and y directions
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Rs 24.0 ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          Image.asset(
                            'assets/aw.png',
                            height: 45,
                            width: 45,
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: Image.asset(
                  'assets/ab.png',
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                   "What're looking for today?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey.shade200,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search category',
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 12),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Icon(Icons.search_outlined,  color: Colors.black54,),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Categories_Widget2(),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Save extra while ordering',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),
                    ),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.green
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliderBar(),

              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
