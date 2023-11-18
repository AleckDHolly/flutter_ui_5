import 'package:flutter/material.dart';
import 'package:flutter_ui_8/components/bottom_sheet_view.dart';
import 'package:flutter_ui_8/components/short_image.dart';

class Shorts extends StatelessWidget {
  const Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30,
                ),
                children: [
                  TextSpan(
                    text: "Zirka ",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: "shorts",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shortItems.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return FractionallySizedBox(
                              heightFactor: 0.9,
                              child: BottomSheetView(
                                image: shortItems[index].image,
                                name: shortItems[index].name,
                              ),
                            );
                          },
                        );
                      },
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset(shortItems[index].image,
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5,
                              bottom: 5,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(2)),
                              height: 20,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Center(
                                  child: Text(
                                    shortItems[index].name,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
