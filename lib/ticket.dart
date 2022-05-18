import 'package:flutter/material.dart';
import 'package:qatar_boardingpass/constants.dart';
import 'package:qatar_boardingpass/page1.dart';
import 'package:dotted_line/dotted_line.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: greycolor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.topCenter,
                  height: 250,
                  width: 390,
                  decoration: BoxDecoration(
                    color: redcolor,
                    image: DecorationImage(
                        image: AssetImage('images/map.png'), fit: BoxFit.fill),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new_rounded),
                        color: Colors.white,
                        iconSize: 20,
                      ),
                      Text(
                        'My Flights',
                        style: appbarstyletext,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.apps_rounded),
                        color: Colors.white,
                        iconSize: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 160,
                child: ClipPath(
                  clipper: TicketClipper(),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 0),
                    width: 347,
                    height: 560,
                    color: Color(0xffEEEEEE),
                    child: Column(
                      children: [
                        Container(
                          width: 305,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('images/qatarlogo.png'),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Ticket Price',
                                        style: ticket,
                                      ),
                                      Text(
                                        '\$200',
                                        style: price,
                                      ),
                                      Text(
                                        'Business',
                                        style: type,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  width: 190,
                                  height: 200,
                                  child: Image.asset(
                                    'images/mapsmall.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xffB3B3B3),
                          thickness: 2.0,
                          endIndent: 20,
                          indent: 20,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 18, right: 18),
                          height: 44,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PASSENGER',
                                    style: t1,
                                  ),
                                  Text(
                                    'Mr.Jackson',
                                    style: t2,
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'SEAT',
                                    style: t1,
                                  ),
                                  Text(
                                    '   4E',
                                    style: t2,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 18, right: 18),
                          height: 44,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'FLIGHT',
                                    style: t1,
                                  ),
                                  Text(
                                    'QR 6506',
                                    style: t2,
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'GATE',
                                    style: t1,
                                  ),
                                  Text(
                                    '   A1',
                                    style: t2,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 18, right: 18),
                          height: 44,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'BOARDING',
                                    style: t1,
                                  ),
                                  Text(
                                    'Sun, 20 Mar 2021',
                                    style: t2,
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '           TIME',
                                    style: t1,
                                  ),
                                  Text(
                                    '09:20 pm',
                                    style: t2,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        DottedLine(
                          direction: Axis.horizontal,
                          lineLength: 275,
                          lineThickness: 2.0,
                          dashColor: Color(0xffB3B3B3),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30,30,30,30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('images/barcode.png'),
                              Image.asset('images/qrcode.png'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;

    var firstcurve = Offset(w - 346, h);
    var endfirstcurve = Offset(w - 302, h);

    var firstbridge = Offset(w - 155, h);
    var endfirstbridge = Offset(w - 45, h);

    var secondcurve = Offset(w, h);
    var endsecondcurve = Offset(w, h - 48);

    var secondbridge = Offset(w, h / 2);
    var endsecondbridge = Offset(w, h - 458);

    var thirdcurve = Offset(w, h - 488);
    var endthirdcurve = Offset(w - 37, h - 497);

    var thirdbridge = Offset(w / 2, h - 523);
    var endthirdbridge = Offset(w - 306, h - 550);

    var fourthcurve = Offset(w - 346, h - 559);
    var endfourthcurve = Offset(w - 346, h - 521);

    //
    var smallcurve = Offset(w - 321, h - 130);
    var endsmallcurve = Offset(w - 346, h - 117);

    var bridge1 = Offset(w - 346, h - 91);
    var endbridge1 = Offset(w - 346, h - 33);

    //firstcurve endfirstcurve
    //firstbridge end
    //secondcurve endsecondcurve

    var bridge2 = Offset(w, h - 75);
    var endbridge2 = Offset(w, h - 117);

    var smallcurve2 = Offset(w - 25, h - 130);
    var endsmallcurve2 = Offset(w, h - 150);

    Path path = Path();
    path.lineTo(w - 346, h - 150);
    path.quadraticBezierTo(
        smallcurve.dx, smallcurve.dy, endsmallcurve.dx, endsmallcurve.dy);
    path.quadraticBezierTo(
        bridge1.dx, bridge1.dy, endbridge1.dx, endbridge1.dy);
    path.quadraticBezierTo(
        firstcurve.dx, firstcurve.dy, endfirstcurve.dx, endfirstcurve.dy);
    path.quadraticBezierTo(
        firstbridge.dx, firstbridge.dy, endfirstbridge.dx, endfirstbridge.dy);
    path.quadraticBezierTo(
        secondcurve.dx, secondcurve.dy, endsecondcurve.dx, endsecondcurve.dy);
    path.quadraticBezierTo(
        bridge2.dx, bridge2.dy, endbridge2.dx, endbridge2.dy);
    path.quadraticBezierTo(
        smallcurve2.dx, smallcurve2.dy, endsmallcurve2.dx, endsmallcurve2.dy);
    path.quadraticBezierTo(secondbridge.dx, secondbridge.dy, endsecondbridge.dx,
        endsecondbridge.dy);
    path.quadraticBezierTo(
        thirdcurve.dx, thirdcurve.dy, endthirdcurve.dx, endthirdcurve.dy);
    path.quadraticBezierTo(
        thirdbridge.dx, thirdbridge.dy, endthirdbridge.dx, endthirdbridge.dy);
    path.quadraticBezierTo(
        fourthcurve.dx, fourthcurve.dy, endfourthcurve.dx, endfourthcurve.dy);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
