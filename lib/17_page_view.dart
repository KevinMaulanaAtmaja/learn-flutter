import 'dart:developer';
import 'package:flutter/material.dart';

class PageViews extends StatefulWidget {
  const PageViews({super.key});

  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Views"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) => Center(
              child: Text(
                "Page ${index + 1}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal.shade100,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if ((pageController.page ?? 0) >= 1) {
                          pageController.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      child: Text("Prev"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        pageController.animateToPage(
                          0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                        // pageController.jumpToPage(0);
                      },
                      child: Text("Home"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if ((pageController.page ?? 0) <= 1) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      child: Text("Next"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // versi biasa
      // body: PageView(
      //   onPageChanged: (value) => log("Move to page-index $value"),
      //   children: [
      //     Center(
      //       child: Text(
      //         "Page 1",
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //       ),
      //     ),Center(
      //       child: Text(
      //         "Page 2",
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //       ),
      //     ),Center(
      //       child: Text(
      //         "Page 3",
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
