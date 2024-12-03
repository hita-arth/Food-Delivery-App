import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';
import 'package:food_delivery_app/pages/settings_page.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //APP LOGO
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //HOME LIST TILE
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home_filled,
            onTap: () => Navigator.pop(context),
          ),

          //SETTING LIST TILE
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ));
            },
          ),
          const Spacer(),

          //LOGOUT LIST TILE
          MyDrawerTile(
            text: "L O G  O U T",
            icon: Icons.exit_to_app_rounded,
            onTap: () {
              logout();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
