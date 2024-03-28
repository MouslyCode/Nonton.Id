import 'package:edspert/screen/navbar_screen/bioskop_screen.dart';
import 'package:edspert/screen/navbar_screen/home_screen.dart';
import 'package:edspert/screen/navbar_screen/profil_screen.dart';
import 'package:edspert/screen/navbar_screen/tiket_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidgets()[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 83,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFFF2C94C),
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xFF2F2C44),
          useLegacyColorScheme: false,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.ticket), label: 'Tiket'),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.film), label: 'Bioskop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          ],
        ),
      ),
    );
  }

  List<Widget> _bodyWidgets() {
    return [
      HomeScreen(),
      TiketScreen(),
      BioskopScreen(),
      ProfilScreen(),
    ];
  }
}
