import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {'name': 'مايكل جورج', 'count': 100, 'rank': 1, 'icon': 'م', 'color': Colors.green},
    {'name': 'مريم بطرس', 'count': 99, 'rank': 2, 'icon': 'م', 'color': Colors.green},
    {'name': 'بولس إبراهيم', 'count': 98, 'rank': 3, 'icon': 'ب', 'color': Colors.green},
    {'name': 'مارينا مجدي', 'count': 90, 'rank': 4, 'icon': 'م', 'color': Colors.grey},
    {'name': 'أندرو سمير', 'count': 80, 'rank': 5, 'icon': 'أ', 'color': Colors.grey},
    {'name': 'كريستين فادي', 'count': 70, 'rank': 6, 'icon': 'ك', 'color': Colors.grey},
    {'name': 'جورج عادل', 'count': 60, 'rank': 7, 'icon': 'ج', 'color': Colors.grey},
    {'name': 'نانسي وديع', 'count': 50, 'rank': 8, 'icon': 'ن', 'color': Colors.grey},
    {'name': 'أنطونيوس رامي', 'count': 40, 'rank': 9, 'icon': 'أ', 'color': Colors.grey},
    {'name': 'فيرونيا سامي', 'count': 30, 'rank': 10, 'icon': 'ف', 'color': Colors.grey},
  ];

  RankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('الترتيب'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _summaryBox(Icons.people, "إجمالي المشاركين", "80", Colors.blue),
                _summaryBox(Icons.star_border, "إجمالي الصفات", "0", Colors.green),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final person = data[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: person['color'],
                      child: Text(
                        person['icon'],
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    title: Text(person['name'], textAlign: TextAlign.right),
                    subtitle: Text("عدد الصفات: ${person['count']}", textAlign: TextAlign.right),
                    trailing: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Text(
                        person['rank'].toString(),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _summaryBox(IconData icon, String title, String count, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 8),
            Text(title, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(count, style: TextStyle(fontSize: 20, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
