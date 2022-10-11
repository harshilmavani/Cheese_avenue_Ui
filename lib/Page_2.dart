import 'package:cheeseavenue/Page_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page_2 extends StatefulWidget {
  const Page_2({Key? key}) : super(key: key);

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  PageController pageController = PageController();
  int d = 0;
  int a = 0;
  List<Map<String, dynamic>> name = [
    {'icon': Icons.check, 'text': 'Potato wedges'},
    {'icon': Icons.check, 'text': 'Corn on the cob'},
    {'icon': Icons.check, 'text': 'corn of the vegetables'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.white,
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: pageController,
                    children: [
                      Image.asset(
                        'assets/images/Pageview.jfif',
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Pageview2.jfif',
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Pageview3.jfif',
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Big Mad Burger',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Patato Bun , Cheddar Cheese , Beef Cucumber , Red\nOnion , iceberg lettuce , avocado , tamato',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose addition',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Required',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.black38,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    name.length,
                    (index) => ListTile(
                      leading: GestureDetector(
                        onTap: () {
                          setState(() {
                            d = index;
                          });
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: d == index ? Colors.black : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:
                                  d == index ? Colors.transparent : Colors.grey,
                            ),
                          ),
                          child: Icon(
                            name[index]['icon'],
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                      subtitle: index == 0
                          ? Text(
                              "Recommended",
                              style: TextStyle(color: Colors.orange),
                            )
                          : SizedBox(),
                      title: Text(
                        name[index]['text'],
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page3(),
                      ));
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Add (1) to cart - 12,90',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
