import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sn_tailleur/pages/user_profil_details/mesures_content.dart';

class UserProfilFemme extends StatefulWidget {
  const UserProfilFemme({Key? key}) : super(key: key);

  @override
  State<UserProfilFemme> createState() => _UserProfilUserProfilFemmeState();
}

class _UserProfilUserProfilFemmeState extends State<UserProfilFemme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: AppBar(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        title: Text(
          'Détails',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          // ICONE DE MODIFICATION
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
            icon: const Icon(Icons.edit_outlined),
            tooltip: 'Show Snackbar',
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  return const Color.fromARGB(255, 62, 104, 139);
                },
              ),
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  return Colors.white;
                },
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rayon des coins
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.sp,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.sp),
            // ICONE DE SUPPRESSION
            child: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
              icon: const Icon(Icons.delete_outline),
              tooltip: 'Show Snackbar',
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return const Color.fromARGB(255, 62, 104, 139);
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return Colors.white;
                  },
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Rayon des coins
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 20.sp,
          left: 20.sp,
          right: 20.sp,
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(31, 122, 121, 121),
        ),
        // LE COLUNM QUI CONTIENT TOUT LE CONTENU DE LA PARTIE EN GRIS
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // LE ROW QUI CONTIENT L'ICONE ET LE NOM DU CLIENT
              Row(
                children: [
                  // L'ICONE
                  Icon(
                    Icons.person_2_outlined,
                    size: 40.sp,
                    color: const Color.fromARGB(255, 62, 104, 139),
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  // LE NOM
                  Text(
                    "Saidou Adama Ndiaye",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Color.fromARGB(255, 62, 104, 139),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                // LE ROW QUI CONTIENT LE NUMERO DE TELEPHONE ET L'ADRESSE
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // COLONNE DES LIBELLES NUMERO ET ADRESSE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // NUMERO DE TELEPHONE
                        Text(
                          'Numéro de téléphone',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 167, 167, 168),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // ADRESSE
                        Text(
                          'Adresse',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 167, 167, 168),
                          ),
                        ),
                      ],
                    ),
                    // COLONNE DES VALEURS NUMERO ET ADRESSE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // VALEUR DU NUMERO DE TELEPHONE
                        Text(
                          '771702462',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // VALEUR DE L'ADRESSE
                        Text(
                          'Médina',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(
                indent: 16,
                endIndent: 16,
                thickness: 1,
                height: 0,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                // LE ROW QUI CONTIENT LE MODEL, LE TISSU ET LA LIVRAISON
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // COLONNE DES LIBELLES  MODEL, LE TISSU ET LA LIVRAISON
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // MODEL
                        Text(
                          'Model',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 167, 167, 168),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // TISSU
                        Text(
                          'Tissu',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 167, 167, 168),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // LIVRAISON
                        Text(
                          'Livraison',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 167, 167, 168),
                          ),
                        ),
                      ],
                    ),
                    // COLONNE DES VALEURS MODEL, LE TISSU ET LA LIVRAISON
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // VALEUR DU MODEL
                        Text(
                          'Grand Boubou',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // VALEUR DU TISSU
                        Text(
                          'Xartoum',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // VALEUR DE LA LIVRAISON
                        Text(
                          '20/04/2024',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(
                indent: 16,
                endIndent: 16,
                thickness: 1,
                height: 0,
                color: Colors.grey,
              ),
              // LES MESURES
              Accordion(
                children: [
                  AccordionSection(
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
                    content: const MesuresContent(),
                  ),
                ],
              ),
              const Divider(
                indent: 16,
                endIndent: 16,
                thickness: 1,
                height: 0,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20.h,
              ),
              // LA FACTURE
              Card(
                color: Color.fromARGB(255, 222, 238, 243),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Coins arrondis
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // PARTIE GAUCHE DU CARD
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Montant à payer : ',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 62, 104, 139),
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Text(
                            'Avance : ',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 62, 104, 139),
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Text(
                            'Restant : ',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 62, 104, 139),
                            ),
                          ),
                        ],
                      ),
                      // PARTIE DROITE DU CARD
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '50 000 FCFA',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Text(
                            '35 000 FCFA',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Text(
                            '15 000 FCFA',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              // BUTTON TERMINER
              Center(
                child: SizedBox(
                  width: 300.w,
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(5),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 62, 104, 139)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 15.0),
                      child: Text(
                        'Terminer',
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
        ),
      ),
    );
  }
}
