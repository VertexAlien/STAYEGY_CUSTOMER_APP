import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckInPage extends StatefulWidget {
  @override
  _CheckInPageState createState() => _CheckInPageState();
}

class _CheckInPageState extends State<CheckInPage> {
  ///Can be done with stateless , it might help better performance
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            padding: EdgeInsets.only(right: 20),
            iconSize: 5,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
              child: Icon(
                Icons.arrow_back_ios,
                size: 25,
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            'Check In',
            style: GoogleFonts.staatliches(
              fontSize: 25,
            ),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text('MR. XYZ Wants to check in',
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  height: 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text('Customer:',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                height: 3,
                                fontWeight: FontWeight.bold)),
                        Text('Name: Rasel Morshed',
                            style: GoogleFonts.roboto(fontSize: 15, height: 2)),
                        Text('Phone Number: 0191234567',
                            style: GoogleFonts.roboto(fontSize: 15)),
                        Text('Details:',
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                height: 3,
                                fontWeight: FontWeight.bold)),
                        Text('Date: 15-12-2021',
                            style: GoogleFonts.roboto(fontSize: 15, height: 2)),
                        Text('Room Type: Sami-Dual/AC',
                            style: GoogleFonts.roboto(fontSize: 15)),
                        Text('Rooms:1',
                            style: GoogleFonts.roboto(fontSize: 15)),
                        Text('Days:2', style: GoogleFonts.roboto(fontSize: 15)),
                        Text('Payment:',
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                height: 3,
                                fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Room price:',
                                style: GoogleFonts.roboto(
                                    fontSize: 15, height: 2)),
                            Text('1200tk',
                                style: GoogleFonts.roboto(
                                    fontSize: 15, height: 2)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Discount:(20%)',
                                style: GoogleFonts.roboto(fontSize: 15)),
                            Text('240tk',
                                style: GoogleFonts.roboto(
                                    fontSize: 15, height: 2)),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Paid:',
                                style: GoogleFonts.roboto(fontSize: 15)),
                            Text('960th',
                                style: GoogleFonts.roboto(
                                    fontSize: 15, height: 2)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        height: 50,
                        width: 190,
                        color: Colors.black,
                        alignment: Alignment.center,
                        child: Text(
                          'REJECT',
                          style: GoogleFonts.roboto(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        height: 50,
                        width: 190,
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: Text(
                          'CONFIRM',
                          style: GoogleFonts.roboto(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
