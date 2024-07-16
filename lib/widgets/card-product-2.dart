import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardProductReview extends StatelessWidget {
  final String image;
  final String name;
  final double rating;

  const CardProductReview({
    Key? key,
    required this.image,
    required this.name,
    required this.rating,
  }) : super(key: key);

  String limitTextTitle(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text; // Kembalikan teks jika panjangnya kurang dari atau sama dengan maxLength
    } else {
      return "${text.substring(0, maxLength)} (...)"; // Potong teks jika melebihi maxLength
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 104,
            width: 104,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Image.asset(image, fit: BoxFit.cover),
                Positioned(
                  right: 78,
                  top: 0,
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: SvgPicture.asset(image),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      limitTextTitle(name, 50),
                      maxLines: 2,
                      style: const TextStyle(
                          fontFamily: "NotoSansKR",
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFFD233),
                      size: 20,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFFD233),
                      size: 20,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFFD233),
                      size: 20,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFFD233),
                      size: 20,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFF0F0F0),
                      size: 20,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontFamily: "NotoSansKR",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
