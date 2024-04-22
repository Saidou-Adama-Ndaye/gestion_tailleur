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
