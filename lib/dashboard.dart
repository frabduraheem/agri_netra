import 'package:flutter/material.dart';

void main() => runApp(AgrinetraApp());

class AgrinetraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agrinetra Dashboard',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agrinetra'),
        backgroundColor: Colors.green[700],
        centerTitle: true,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Greeting Section
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Good Morning, Farmer!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Action Cards Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  DashboardCard(
                    title: 'Watering Needed',
                    value: '500 L/acre',
                    icon: Icons.water_drop,
                    color: Colors.blueAccent,
                    onTap: () => print('Watering tapped'),
                  ),
                  DashboardCard(
                    title: 'Pest Alerts',
                    value: '2 Active',
                    icon: Icons.bug_report,
                    color: Colors.redAccent,
                    onTap: () => print('Pest tapped'),
                  ),
                  DashboardCard(
                    title: 'Soil Health',
                    value: 'Healthy',
                    icon: Icons.grass,
                    color: Colors.green,
                    onTap: () => print('Soil tapped'),
                  ),
                  DashboardCard(
                    title: 'Green Credits',
                    value: '120 pts',
                    icon: Icons.star,
                    color: Colors.orangeAccent,
                    onTap: () => print('Credits tapped'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[800],
        unselectedItemColor: Colors.grey[600],
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Crop Health'),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars),
            label: 'Green Credits',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.sensors), label: 'Sensors'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// Dashboard Card Widget
class DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  DashboardCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: color),
              SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                value,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
