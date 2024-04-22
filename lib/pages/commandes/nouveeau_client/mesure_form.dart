import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MesureForm extends StatelessWidget {
  const MesureForm({Key? key});

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                width: 30.w,
                child: TextFormField(
                  initialValue: '00',
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // Vous pouvez utiliser cette fonction pour récupérer la valeur saisie
                    print('Nouvelle valeur des épaules : $value');
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
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
            ],
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
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
              SizedBox(
                width: 30.w,
                child: TextFormField(
                  initialValue: '00',
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // Vous pouvez utiliser cette fonction pour récupérer la valeur saisie
                    print('Nouvelle valeur des manches : $value');
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
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
            ],
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
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
              SizedBox(
                width: 30.w,
                child: TextFormField(
                  initialValue: '00',
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // Vous pouvez utiliser cette fonction pour récupérer la valeur saisie
                    print('Nouvelle valeur de la poitrine : $value');
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
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
            ],
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
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
              SizedBox(
                width: 30.w,
                child: TextFormField(
                  initialValue: '00',
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // Vous pouvez utiliser cette fonction pour récupérer la valeur saisie
                    print('Nouvelle valeur de la longueur : $value');
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
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
            ],
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
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
              SizedBox(
                width: 30.w,
                child: TextFormField(
                  initialValue: '00',
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // Vous pouvez utiliser cette fonction pour récupérer la valeur saisie
                    print(
                        'Nouvelle valeur de la longueur du pantalon : $value');
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
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
            ],
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
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
              SizedBox(
                width: 30.w,
                child: TextFormField(
                  initialValue: '00',
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // Vous pouvez utiliser cette fonction pour récupérer la valeur saisie
                    print('Nouvelle valeur de la ceinture : $value');
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
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
            ],
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
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
              SizedBox(
                width: 30.w,
                child: TextFormField(
                  initialValue: '00',
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // Vous pouvez utiliser cette fonction pour récupérer la valeur saisie
                    print('Nouvelle valeur des hanches : $value');
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
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
            ],
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
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
              SizedBox(
                width: 30.w,
                child: TextFormField(
                  initialValue: '00',
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // Vous pouvez utiliser cette fonction pour récupérer la valeur saisie
                    print('Nouvelle valeur du cou : $value');
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
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
            ],
          ),
          const Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
