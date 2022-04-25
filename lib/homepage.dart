import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // vao trong may xem list nhac
    // len mang xem tinh hinh thoi tiet
  }

  @override
  void dispose() {
    super.dispose();
    // thu don 1 so thu
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 20,
                bottom: 14,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 54),
                    child: Container(
                      height: 48,
                      width: 120,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    color: Colors.grey,
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 3,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                SizedBox(
                  height: 62,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (c, i) {
                      if (i == 0) {
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(48),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 8,
                                    offset: const Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Text(
                                "All",
                                style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              margin: EdgeInsets.only(
                                  left: 14, top: 14, bottom: 14),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                            ),
                          ],
                        );
                      }

                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(48),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 8,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text(
                              "Category #$i",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            margin:
                                EdgeInsets.only(left: 14, top: 14, bottom: 14),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 12,
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      color: Colors.grey,
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                        right: 17,
                        top: 20,
                        bottom: 35,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Artist · ",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "3.7M views",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " · 2 years ago",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 3,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24, bottom: 35),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text(
                          "Stuff that gets you hooked",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          itemBuilder: (c, i) {
                            return Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    width: 140,
                                    height: 200,
                                    color: Colors.grey,
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        Container(
                                          width: 140,
                                          height: 200,
                                          color: Colors.grey,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 48,
                                                  width: 48,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(height: 8),
                                                Text(
                                                  "Artist name",
                                                  maxLines: 1,
                                                  style: GoogleFonts.workSans(
                                                    textStyle: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 14,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 3,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      color: Colors.grey,
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 24, right: 17, top: 20, bottom: 35),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Artist · ",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "3.7M views",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " · 2 years ago",
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 3,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
