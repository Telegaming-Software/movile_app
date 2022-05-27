import 'package:flutter/material.dart';

class DrawerUser extends StatefulWidget {
  const DrawerUser({Key? key}) : super(key: key);

  @override
  State<DrawerUser> createState() => _DrawerUserState();
}

class _DrawerUserState extends State<DrawerUser> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color.fromRGBO(20, 31, 106, 1),
        child: ListView(
          children: [
            _avatar(),
            _drawerItem(icon: Icons.home, text: 'Inicio'),
            const SizedBox(height: 10),
            _drawerItem(icon: Icons.person, text: 'Perfil'),
            const SizedBox(height: 10),
            _drawerItem(icon: Icons.book, text: 'Materiales'),
            const SizedBox(height: 10),
            _drawerItem(icon: Icons.attach_money, text: 'Recompenzas'),
            const SizedBox(height: 10),
            _drawerItem(icon: Icons.stacked_bar_chart, text: 'Progreso'),
            const SizedBox(height: 10),
            _drawerItem(icon: Icons.add_reaction, text: 'Invitar Amigos'),
          ],
        ),
      ),
    );
  }
}

DrawerHeader _avatar() {
  return const DrawerHeader(
      child: CircleAvatar(
    backgroundImage: NetworkImage(
        'https://i1.sndcdn.com/artworks-000216272705-8tjvzn-t500x500.jpg'),
  ));
}

ListTile _drawerItem({
  required String text,
  required IconData icon,
}) {
  return ListTile(
    hoverColor: Colors.white70,
    leading: Icon(icon, color: Colors.white),
    title:
        Text(text, style: const TextStyle(color: Colors.white, fontSize: 20)),
  );
}
