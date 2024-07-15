import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardProduct extends StatelessWidget {
  final String image;
  final String name;
  final String plan1;
  final String plan2;
  final double rating;
  final int totalRating;
  final String tag1;
  final String tag2;
  final int index;

  const CardProduct(
      {Key? key,
      required this.image,
      required this.name,
      required this.plan1,
      required this.plan2,
      required this.rating,
      required this.totalRating,
      required this.tag1,
      required this.tag2,
      required this.index})
      : super(key: key);

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
                    child: SvgPicture.asset(
                        "assets/icon/crown-${(index + 1)}.svg"),
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
                      limitTextTitle(name, 20),
                      maxLines: 1,
                      style: const TextStyle(
                          fontFamily: "NotoSansKR",
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(
                      Icons.fiber_manual_record,
                      color: Colors.black,
                      size: 5,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      limitTextTitle(plan1, 25),
                      maxLines: 2,
                      style: const TextStyle(
                          fontFamily: "NotoSansKR", fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(
                      Icons.fiber_manual_record,
                      color: Colors.black,
                      size: 5,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      limitTextTitle(plan2, 23),
                      maxLines: 2,
                      style: const TextStyle(
                          fontFamily: "NotoSansKR", fontSize: 12),
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
                      color: Colors.yellow,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontFamily: "NotoSansKR",
                        fontSize: 10,
                        color: Colors.yellow,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "(${totalRating.toString()})",
                      style: const TextStyle(
                        fontFamily: "NotoSansKR",
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(color: Colors.black12, width: 0),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        tag1,
                        style: const TextStyle(
                            fontFamily: "NotoSansKR",
                            fontSize: 11,
                            color: Colors.black38),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(color: Colors.black12, width: 0),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        tag2,
                        style: const TextStyle(
                            fontFamily: "NotoSansKR",
                            fontSize: 11,
                            color: Colors.black38),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
