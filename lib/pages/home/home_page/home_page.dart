import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sn_tailleur/pages/home/home_page/home_custom_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late String languagesDropdown;
  String? languagesSelectedValue;
  String? statusSelectedValue;
  final List<String> languages = [
    'FR',
    'ENG',
  ];

  final List<String> status = [
    'Tous',
    'Commander',
    'Terminer',
    'Livrer',
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // PREMIER ELEMENT DU STACK : IL CONTIENT L'ENTETE BLEUE ET LE BODY EN BLANC
            child: Column(
              children: [
                // LE CONTAINER D'ENTETE EN BLEUE
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                  height: 150.h,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 62, 104, 139),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // LE LOGO
                          Image.asset(
                            'assets/images/logo.png',
                            height: 55.h,
                            width: 55.w,
                          ),
                          SizedBox(width: 10.sp),
                          // LE NOM DU CLIENT ET SON ADRESSE
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Saidou Adama Ndiaye',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Medina',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      // LANGUAGE PICKER
                      Container(
                        width: 50.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: Text(
                              'FR',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                            items: languages
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: languagesSelectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                languagesSelectedValue = value;
                              });
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.only(left: 10),
                              height: 25,
                              width: 150,
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // DEUXIEME ELEMENT DU STACK : IL CINTIENT LES CARD ET LE RESTE
          Container(
            margin: EdgeInsets.only(top: 115.sp),
            padding: EdgeInsets.only(
              top: 10.sp,
              left: 20.sp,
              right: 20.sp,
            ),
            child: Column(
              children: [
                // PREMIER CARD
                Card(
                  elevation: 10.0,
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Coins arrondis
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 12, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // PREMIERE COLONNE
                        Column(
                          children: [
                            Text(
                              "Commande",
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Container(
                              width: 30.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 170, 204, 231),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  "35",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        // DEUXIEME COLONNE
                        Column(
                          children: [
                            Text(
                              "Terminer",
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Container(
                              width: 30.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 170, 204, 231),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  "35",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        // TROISIEME COLONNE
                        Column(
                          children: [
                            Text(
                              "Livrer",
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Container(
                              width: 30.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 170, 204, 231),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  "35",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                // LE ROW QUI CONTIENT LE TITRE STATUS ET LE FILTRE
                Padding(
                  padding: EdgeInsets.only(left: 30.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Status",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.select_all_outlined),
                          SizedBox(
                            width: 20.w,
                          ),
                          // LE FILTRE
                          Container(
                            width: 80.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 62, 104, 139),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                hint: Text(
                                  'Tous',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                items: status
                                    .map((String item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                value: statusSelectedValue,
                                onChanged: (String? value) {
                                  setState(() {
                                    statusSelectedValue = value;
                                  });
                                },
                                buttonStyleData: const ButtonStyleData(
                                  padding: EdgeInsets.only(left: 10),
                                  height: 25,
                                  width: 150,
                                ),
                                iconStyleData: const IconStyleData(
                                  iconEnabledColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  iconDisabledColor: Colors.grey,
                                ),
                                dropdownStyleData: DropdownStyleData(
                                  // maxHeight: 100,
                                  // width: 100,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 64, 141, 173),
                                  ),
                                ),
                                menuItemStyleData: const MenuItemStyleData(
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        HomeCustmCard(),
                        SizedBox(
                          height: 10.h,
                        ),
                        HomeCustmCard(),
                        SizedBox(
                          height: 10.h,
                        ),
                        HomeCustmCard(),
                        SizedBox(
                          height: 10.h,
                        ),
                        HomeCustmCard(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 62, 104, 139),
        shape: CircleBorder(),
        onPressed: () {
          // Action à effectuer lorsque le bouton flottant est appuyé
        },
        child: Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GFTabBar(
        tabBarColor: const Color.fromARGB(255, 62, 104, 139),
        indicatorColor: const Color.fromARGB(255, 62, 104, 139),
        labelColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedLabelColor: Color.fromARGB(255, 141, 140, 140),
        length: 4,
        controller: tabController,
        tabs: const [
          Tab(
            icon: Icon(Icons.account_box_outlined),
            child: Text(
              'Tab1',
            ),
          ),
          Tab(
            icon: Icon(Icons.directions_bus),
            child: Text(
              'Tab2',
            ),
          ),
          Tab(
            icon: Icon(Icons.directions_railway),
            child: Text(
              'Tab3',
            ),
          ),
          Tab(
            icon: Icon(Icons.settings),
            child: Text(
              'Tab4',
            ),
          ),
        ],
      ),
    );
  }
}
