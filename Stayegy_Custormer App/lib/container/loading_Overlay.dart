import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingOverlay {
  void build(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.black.withOpacity(0.8),
            child: SpinKitSquareCircle(
              color: Colors.white70,
              size: 20,
            ),
          );
        });
  }
}