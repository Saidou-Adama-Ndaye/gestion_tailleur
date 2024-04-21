import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  TextEditingController adresse = TextEditingController();
  TextEditingController nomComplet = TextEditingController();
  TextEditingController numeros = TextEditingController();
  TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                height: 300.h,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight:
                          Radius.circular(40)), // Adjust the value as needed
                  color: Colors.white,
                )),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 10.h, top: 50.h),
                            child: Image.asset('assets/logo.png',
                                height: 70.h, width: 70.w)),
                        Text(
                          'SN-Tailleur',
                          style: GoogleFonts.montserrat(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 25.h),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40.w, bottom: 10.h),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "CONNEXION ",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                width: 15.h,
                              ),
                              Text(
                                "INSCRIPTION ",
                                style: GoogleFonts.montserrat(
                                  color: Colors.transparent,
                                  shadows: [
                                    Shadow(
                                        offset: Offset(0, -7),
                                        color: Colors.white)
                                  ],
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  decorationThickness: 3,
                                  decorationStyle: TextDecorationStyle.solid,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // height: MediaQuery.of(context).size.height / 1.7,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 25.w, right: 25.w),
                          child: Card(
                              color: Colors.white,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Form(
                                key: formKey,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.w, vertical: 30.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      TextFormField(
                                        controller: nomComplet,
                                        style: TextStyle(fontSize: 18.sp),
                                        decoration: const InputDecoration(
                                          labelText: "Nom complet",
                                          suffixIcon: Icon(
                                            FontAwesomeIcons.addressBook,
                                            size: 18,
                                            color: Color(0xff3B83BD),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                      TextFormField(
                                        controller: numeros,
                                        style: TextStyle(fontSize: 18.sp),
                                        decoration: const InputDecoration(
                                          labelText: "Numeros",
                                          suffixIcon: Icon(
                                            FontAwesomeIcons.tty,
                                            size: 18,
                                            color: Color(0xff3B83BD),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      TextFormField(
                                        controller: adresse,
                                        style: TextStyle(fontSize: 18.sp),
                                        decoration: const InputDecoration(
                                          labelText: "Adresse",
                                          suffixIcon: Icon(
                                            Icons.home_work_outlined,
                                            size: 18,
                                            color: Color(0xff3B83BD),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                      TextFormField(
                                        controller: password,
                                        style: TextStyle(fontSize: 18.sp),
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                          labelText: "Mot de passe",
                                          suffixIcon: Icon(
                                            FontAwesomeIcons.unlockAlt,
                                            size: 18,
                                            color: Color(0xff3B83BD),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30.h),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              vertical:
                                                  14), // Ajuster la hauteur du bouton
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          backgroundColor: Color(0xff3B83BD),
                                        ),
                                        child: Text(
                                          'Valider',
                                          style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                    ],
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 14), // Ajuster la hauteur du bouton
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Color(0xff3B83BD)),
                            ),
                            backgroundColor: Colors.white,
                          ),
                          child: SizedBox(
                            width: 300.w,
                            height: 40.h,
                            child: Center(
                              child: Text(
                                'J\'ai deja un compte',
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xff3B83BD),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
