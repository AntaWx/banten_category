import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BantenDetail extends StatelessWidget {
  const BantenDetail({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final List<String> description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(image),
                fit: BoxFit.cover,
                height: 250,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            'Deskripsi',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.amber),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: description.map((element) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  element,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
