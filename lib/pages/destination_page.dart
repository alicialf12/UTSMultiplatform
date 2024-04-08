import 'package:flutter/material.dart';
import 'package:travel_guide/models/destination_card.dart';

class DestinationChoicePage extends StatelessWidget {
  const DestinationChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destination Choices'),
      ),
      body: ListView(
        children: const [
          DestinationCard(
            imagePath: 'assets/ubud.jpg',
            destinationName: 'Ubud',
            description: 'Ubud is a town on the Indonesian island of Bali in Ubud District, located amongst rice paddies and steep ravines in the central foothills of the Gianyar regency.',
          ),

          DestinationCard(
            imagePath: 'assets/kuta.jpg',
            destinationName: 'Kuta',
            description: 'Kuta is a beach and resort area in the south of the island of Bali, Indonesia.',
          ),
          DestinationCard(
            imagePath: 'assets/tanahlot.jpg',
            destinationName: 'Tanah Lot',
            description: 'Tanah Lot is a famous tourist destination in Bali, Indonesia which is famous for its stunning natural beauty and iconic sea temple. Perched on a large rock just off the coast, Tanah Lot offers stunning views, especially at sunset. The sea temple, known as Pura Tanah Lot, is considered one of the holiest sites in Bali and has significant religious significance for Hindus.',
          ),

          DestinationCard(
            imagePath: 'assets/uluwatu.jpg',
            destinationName: 'Uluwatu',
            description:"Uluwatu is a place on the south-western tip of the Bukit Peninsula of Bali, Indonesia. It is home to the Pura Luhur Uluwatu Temple and is the site of some of Bali’s best beaches.",
          ),

          DestinationCard(
            imagePath: 'assets/nusapenida.jpg',
            destinationName: 'Nusa Penida',
            description: "Nusa Penida is an island southeast of Indonesia's island Bali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan and Nusa Ceningan. The Badung Strait separates the island and Bali.",
          ),
        ],
      ),
    );
  }
}
