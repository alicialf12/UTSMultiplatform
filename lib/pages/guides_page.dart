import 'package:flutter/material.dart';
import 'package:travel_guide/models/guide.dart';

class GuidesPage extends StatelessWidget {
  const GuidesPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    List<Guide> guides = [
      Guide(
        name: 'Putu Jody',
        expertise: 'Adventure Tours',
        experience: '5 years',
        imageUrl: 'assets/putu_jody.jpg',
      ),
      Guide(
        name: 'Wayan Bobby',
        expertise: 'Cultural Tours',
        experience: '3 years',
        imageUrl: 'assets/wayan_bobby2.jpg'
      ),
      Guide(
        name: 'Komang Bagaskara',
        expertise: 'Historical Tours',
        experience: '4 years',
        imageUrl: 'assets/komang_bagaskara.jpg'
      ),
      Guide(
        name: 'Ketut Askara',
        expertise: 'Culinary Tours',
        experience: '3 years',
        imageUrl: 'assets/ketut_askara2.jpg'
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Guides'),
      ),
      body: Center(
        child: GridView.builder(
          itemCount: guides.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 10,
            mainAxisSpacing: 10, 
          ),
          itemBuilder: (context, index) {
            Guide guide = guides[index];
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50, 
                    backgroundImage: AssetImage(guide.imageUrl),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    guide.name,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text('Expertise: ${guide.expertise}'),
                  Text('Experience: ${guide.experience}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
