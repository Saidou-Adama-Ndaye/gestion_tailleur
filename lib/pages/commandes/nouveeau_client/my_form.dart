import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Nom Complet',
                prefixIcon: const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 62, 104, 139),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 240, 240, 240),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 62, 104, 139),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Adresse',
                prefixIcon: const Icon(
                  Icons.location_on,
                  color: Color.fromARGB(255, 62, 104, 139),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 240, 240, 240),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 62, 104, 139),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Téléphone',
                prefixIcon: const Icon(
                  Icons.phone,
                  color: Color.fromARGB(255, 62, 104, 139),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 240, 240, 240),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 62, 104, 139),
                  ),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }
}
