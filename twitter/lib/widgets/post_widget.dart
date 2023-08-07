import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: ClipOval(
                  child: Image.network(
                    "https://cdn.pocket-lint.com/r/s/1200x/assets/images/153339-games-news-does-mario-sunbathing-pic-mean-mario-sunshine-for-switch-is-near-image1-9zsg71zrml.jpg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Mario',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.verified,
                color: Colors.blue,
                size: 16.0,
              ),
              const SizedBox(width: 10),
              const Text(
                '@SuperMario',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 5),
              const Text(
                '·',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 5),
              const Text(
                '1h',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 20),
              const Icon(
                Icons.more_horiz,
                size: 16.0,
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(width: 50),
              Flexible(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et justo eget justo laoreet feugiat a sit amet ligula.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              SizedBox(width: 50),
              Icon(Icons.comment, color: Colors.grey),
              SizedBox(width: 4.0),
              Text('0',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              SizedBox(width: 4.0),
              Icon(Icons.repeat, color: Colors.grey),
              SizedBox(width: 4.0),
              Text('0',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              SizedBox(width: 4.0),
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: 4.0),
              Text('2',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              SizedBox(width: 80),
              Icon(Icons.share, color: Colors.grey),
              SizedBox(width: 50),
            ],
          ),
        ],
      ),
    );
  }
}
