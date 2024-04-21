import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MesuresContent extends StatelessWidget {
  const MesuresContent({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      // LE ROW QUI CONTIENT LE MODEL, LE TISSU ET LA LIVRAISON
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Epaules : ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 62, 104, 139),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '50',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Manche : ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 62, 104, 139),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '50',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Poitrine : ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 62, 104, 139),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '50',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Longueur : ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 62, 104, 139),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '50',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Longueur pantalon : ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 62, 104, 139),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '50',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ceinture : ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 62, 104, 139),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '50',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hanches : ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 62, 104, 139),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '50',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cou : ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 62, 104, 139),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '50',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
