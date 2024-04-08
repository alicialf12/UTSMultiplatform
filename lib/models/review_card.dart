import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final IconData avatar;
  final String review;
  final int rating;

  const ReviewCard({
    super.key,
    required this.avatar,
    required this.review,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Center( 
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 16.0), 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(avatar),
                  const SizedBox(width: 8),
                  const Text(
                    'Traveler',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: List.generate(
                      rating,
                      (index) => const Icon(Icons.star, color: Colors.yellow),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                review,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
