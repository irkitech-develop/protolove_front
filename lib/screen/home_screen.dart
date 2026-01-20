import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:protolove_front/utils/app_messages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Simulación de datos del usuario (luego vendrán de Supabase)
  final String userName = 'Daniel Chávez';
  final String userEmail = 'dchavez@irkitech.com';
  final String? userPhotoUrl = null; // aquí luego pondrás la foto real

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Protolove'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Funcionalidad de notificaciones'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),

      // 👉 ESTO HACE QUE AL ABRIR EL DRAWER SE OPACA EL FONDO
      drawerScrimColor: Colors.black.withOpacity(0.6),

      drawer: _buildDrawer(context),

      body: const Center(
        child: Text(
          'Bienvenido a Protolove 💕',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  // ================= DRAWER =================

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _buildDrawerHeader(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _drawerItem(
                  icon: Icons.home,
                  text: 'Inicio',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                _drawerItem(
                  icon: Icons.person,
                  text: 'Mi perfil',
                  onTap: () {
                    Navigator.pop(context);
                    // Navigator.pushNamed(context, '/profile');
                  },
                ),

                _drawerItem(
                  icon: Icons.notifications,
                  text: 'Notificaciones',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                _drawerItem(
                  icon: Icons.settings,
                  text: 'Configuración',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                const Divider(height: 30),

                _drawerItem(
                  icon: Icons.logout,
                  text: 'Cerrar sesión',
                  color: Colors.red,
                  onTap: () {
                    Navigator.pop(context);
                    _showLogoutDialog(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ================= HEADER DEL DRAWER =================

  Widget _buildDrawerHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 50, bottom: 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pinkAccent, Colors.orangeAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            backgroundImage:
                userPhotoUrl != null ? NetworkImage(userPhotoUrl!) : null,
            child:
                userPhotoUrl == null
                    ? const Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.pinkAccent,
                    )
                    : null,
          ),
          const SizedBox(height: 12),
          Text(
            userName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            userEmail,
            style: const TextStyle(fontSize: 14, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  // ================= ITEM REUTILIZABLE =================

  Widget _drawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
    Color color = Colors.black87,
  }) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
    );
  }

  // ================= LOGOUT =================

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cerrar Sesión'),
          content: const Text('¿Estás seguro de que quieres cerrar sesión?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _performLogout(context);
              },
              child: const Text(
                'Cerrar Sesión',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  void _performLogout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (route) => false,
    );
    AppMessages.success(context, 'Sesión finalizada correctamente.');
  }
}
