import 'package:flutter/material.dart';
import 'package:travel_guide/models/review_card.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reviews'),
      ),
      body: ListView(
        children: const [
          ReviewCard(
            avatar: Icons.person,
            review: 'Great experience with Pak Wayan Bobby. He was very knowledgeable and friendly!',
            rating: 5,
          ),
          ReviewCard(
            avatar: Icons.person,
            review: 'Had a wonderful time exploring new places with Pak Putu Jody. Highly recommended!',
            rating: 4,
          ),
          ReviewCard(
            avatar: Icons.person,
            review: 'Pak Ketut Askara was helpful and accommodating throughout the trip. Would love to travel with him again!',
            rating: 4,
          ),
          ReviewCard(
            avatar: Icons.person,
            review: 'Enjoyed every moment of the trip thanks to the amazing travel buddy a.k.a Pak Komang Bagaskara. Will definitely book again!',
            rating: 5,
          ),
        ],
      ),
    );
  }
}
