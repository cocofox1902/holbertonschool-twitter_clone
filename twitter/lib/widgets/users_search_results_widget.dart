import 'package:flutter/material.dart';

class UsersSearchResultsWidget extends StatelessWidget {
  final String? name;
  final String? username;
  final String? bio;
  final String? imgUrl;
  final bool? isVerified;

  const UsersSearchResultsWidget(
      {super.key,
      this.name,
      this.username,
      this.bio,
      this.imgUrl,
      this.isVerified});

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
                    imgUrl!,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$name',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('$bio'),
                    Text(
                      '$username',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              if (isVerified!)
                const Row(
                  children: [
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                      size: 16.0,
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
