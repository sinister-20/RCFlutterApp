import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:rcapp/pages/NavigationBar.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel1 = new Container(
      margin: EdgeInsets.all(5),
      height: 180.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/bluelounge");
            },
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/12.jpg'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Text(
                  "The Blue Lounge",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/yellowlounge");
            },
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/13.jpg'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Text(
                  "The Yellow Lounge",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/milaplounge");
            },
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/17.jpg'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Text(
                  "Milap Reception Hall",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
        autoplay: false,
        dotBgColor: Colors.transparent,
        borderRadius: true,
        dotSize: 0,
      ),
    );

    Widget image_carousel2 = new Container(
      margin: EdgeInsets.all(5),
      height: 180.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          Card(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/15.jpg'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Text(
                "Main Banquet",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/16.jpg'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Text(
                "Wedding Reception Hall",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
        autoplay: false,
        dotSize: 0,
        borderRadius: true,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 10.0,
        backgroundColor: Colors.deepOrange,
        title: Text('Booking'),
      ),
      body: new ListView(
        children: <Widget>[
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                " Lounges",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              OutlineButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/bookingcalendar');
                  },
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.grey,
                  child: Text('Book')),
            ],
          ),
          SizedBox(height: 10.0),
          image_carousel1,
          SizedBox(height: 50.0),
          Text(
            " Banquet Halls",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          image_carousel2,
        ],
      ),
    );
  }
}
