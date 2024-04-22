import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sn_tailleur/pages/commandes/nouveeau_client/mesure_form.dart';
import 'package:sn_tailleur/pages/commandes/nouveeau_client/my_form.dart';

class NouvelleClient extends StatefulWidget {
  const NouvelleClient({
    Key? key,
  }) : super(key: key);

  @override
  State<NouvelleClient> createState() => _NouvelleClientState();
}

class _NouvelleClientState extends State<NouvelleClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: AppBar(
        title: Text(
          'Nouveau Client ',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.only(
              top: 10.sp,
              left: 20.sp,
              right: 20.sp,
            ),
            elevation: 5.0,
            shadowColor: Colors.blue,
            surfaceTintColor: Color.fromARGB(255, 159, 187, 233),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Coins arrondis
            ),
            child: Container(
              height: 520.h,
              child: Column(
                children: [
                  MyForm(),
                  Expanded(
                    child: Accordion(
                      children: [
                        AccordionSection(
                          isOpen: true,
                          header: Text(
                            'Mesures(Hommes)',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          headerPadding: EdgeInsets.symmetric(
                            vertical: 10.sp,
                            horizontal: 20.sp,
                          ),
                          content: const MesureForm(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Center(
            child: SizedBox(
              width: 300.w,
              height: 40.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 62, 104, 139),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                  child: Text(
                    'Ajouter',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
