import 'package:flutter/material.dart';
import 'package:qatar_boardingpass/constants.dart';
import 'package:qatar_boardingpass/ticket.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
                        onPressed: () {},
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
                  clipper: ContentClipper(),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 0),
                    width: 347,
                    height: 560,
                    color: Color(0xffEEEEEE),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Image.asset('images/qatarlogo.png')),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TicketPage()));
                          },
                          child: Myflightlist(
                            countryfrom: 'London',
                            code1: 'LTN',
                            date1: 'Sun, 20 Mar 2021',
                            time1: '9:20 pm',
                            whereto: 'Doha',
                            code2: 'DOH',
                            time2: '1:20 am',
                            date2: 'Sun, 20 Mar 2021',
                          ),
                        ),
                        Divider(
                          color: Color(0xffB3B3B3),
                          thickness: 2.0,
                          endIndent: 20,
                          indent: 20,
                        ),
                        Myflightlist(
                          countryfrom: 'Sydney',
                          code1: 'SYD',
                          date1: 'Sun, 20 Mar 2021',
                          time1: '9:20 pm',
                          whereto: 'Doha',
                          code2: 'DOH',
                          time2: '1:20 am',
                          date2: 'Sun, 20 Mar 2021',
                        ),
                        Divider(
                          color: Color(0xffB3B3B3),
                          thickness: 2.0,
                          endIndent: 20,
                          indent: 20,
                        ),
                        Myflightlist(
                          countryfrom: 'London',
                          code1: 'LHR',
                          date1: 'Sun, 20 Mar 2021',
                          time1: '9:20 pm',
                          whereto: 'Dubai',
                          code2: 'DXB',
                          time2: '1:20 am',
                          date2: 'Sun, 20 Mar 2021',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(top: 120, child: Image.asset('images/plane.png'),left: 90,),
            ],
          ),
        ),
      ),
    );
  }
}

class Myflightlist extends StatelessWidget {
  const Myflightlist({
    Key? key,
    required this.countryfrom,
    required this.code1,
    required this.time1,
    required this.date1,
    required this.whereto,
    required this.code2,
    required this.time2,
    required this.date2,
  }) : super(key: key);
  final String countryfrom;
  final String code1;
  final String time1;
  final String date1;
  final String whereto;
  final String code2;
  final String time2;
  final String date2;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                countryfrom,
                style: countryname,
              ),
              Text(
                code1,
                style: codecountry,
              ),
              Text(
                time1,
                style: time,
              ),
              Text(
                date1,
                style: date,
              ),
            ],
          ),
          Icon(
            Icons.airplanemode_active,
            color: Colors.black,
            size: 25,
          ),
          Column(
            children: [
              Text(
                whereto,
                style: countryname,
              ),
              Text(
                code2,
                style: codecountry,
              ),
              Text(
                time2,
                style: time,
              ),
              Text(
                date2,
                style: date,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.332);
    var firstpoint = Offset(size.width * 0.036, size.height * 0.476);
    var secondpoint = Offset(size.width * 0.135, size.height * 0.532);
    var thirdpoint = Offset(size.width * 0.984, size.height * 0.816);
    var lastpoint = Offset(size.width * 0.9, size.height * 0.792);
    var fourthpoint = Offset(size.width, size.height);

    path.quadraticBezierTo(
        firstpoint.dx, firstpoint.dy, secondpoint.dx, secondpoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.66, lastpoint.dx, lastpoint.dy);

    path.quadraticBezierTo(
        thirdpoint.dx, thirdpoint.dy, fourthpoint.dx, fourthpoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ContentClipper extends CustomClipper<Path> {
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

    Path path = Path();
    path.lineTo(w - 346, h - 48);
    path.quadraticBezierTo(
        firstcurve.dx, firstcurve.dy, endfirstcurve.dx, endfirstcurve.dy);
    path.quadraticBezierTo(
        firstbridge.dx, firstbridge.dy, endfirstbridge.dx, endfirstbridge.dy);
    path.quadraticBezierTo(
        secondcurve.dx, secondcurve.dy, endsecondcurve.dx, endsecondcurve.dy);
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
