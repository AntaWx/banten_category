import 'package:banten_apps/models/banten_models.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BantenGridItem extends StatelessWidget {
  const BantenGridItem({super.key, required this.bantenModels});

  final BantenModels bantenModels;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      clipBehavior: Clip.hardEdge,
      elevation: 20,
      child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(bantenModels.imageUrl),
                fit: BoxFit.cover,
                height: 250,
                width: double.infinity,
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.black45,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          bantenModels.name,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [],
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
