import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCustmCard extends StatefulWidget {
  @override
  State<HomeCustmCard> createState() => _HomeCustmCardState();
}

class _HomeCustmCardState extends State<HomeCustmCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Coins arrondis
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // PARTIE GAUCHE DU CARD
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person_3,
                      color: const Color.fromARGB(255, 62, 104, 139),
                    ),
                    Text(
                      'Saidou Adama Ndiaye',
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Adresse',
                  style: TextStyle(
                    fontSize: 11.sp,
                  ),
                ),
                Text(
                  'Model',
                  style: TextStyle(
                    fontSize: 11.sp,
                  ),
                ),
                Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 11.sp,
                  ),
                ),
                Text(
                  'Livraison',
                  style: TextStyle(
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),
            // PARTIE DROITE DU CARD
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '771322438',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: const Color.fromARGB(255, 62, 104, 139),
                  ),
                ),
                Text(
                  'Medina',
                  style: TextStyle(
                    fontSize: 11.sp,
                  ),
                ),
                Text(
                  'Grand Boubou',
                  style: TextStyle(
                    fontSize: 11.sp,
                  ),
                ),
                Container(
                  width: 80.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 62, 104, 139),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Center(
                    child: Text(
                      'En cours',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Text(
                  '19/04/2024',
                  style: TextStyle(
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
