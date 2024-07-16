import 'package:eshop/dummy/sample_datas.dart';
import 'package:eshop/utils/colors-configuration.dart';
import 'package:eshop/widgets/card-product-2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountProfile extends StatefulWidget {
  final String title;
  final String subtitle;
  final dynamic account;

  const AccountProfile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.account})
      : super(key: key);

  @override
  _AccountProfileState createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          shadowColor: Colors.grey,
          title: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 10,
                    fontFamily: "Roboto",
                    color: Color(0xFF868686),
                  ),
                ),
                Text(
                  widget.subtitle,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                      color: Color(0xFF1D1D1D),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        body: Container(
          color: ColorPickers.backgroundColors,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 289,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(widget.account['image']),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(widget.account["name"],
                          style: const TextStyle(
                              fontFamily: "NotoSansKR",
                              fontSize: 20,
                              color: Colors.black)),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icon/crown.svg"),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            "골드",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "NotoSansKR",
                                color: Color(0xFFFFD233)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFF0F0F0),
                                borderRadius: BorderRadius.circular(6)),
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: const Text(
                              "조립컴 업체를 운영하며 리뷰를 작성합니다.",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "NotoSansKR",
                                  color: Color(0xFF868686)),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("작성한 리뷰",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "NotoSansKR",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text("총 35개",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "NotoSansKR",
                                    color: Color(0xFF616161))),
                            const Expanded(child: SizedBox()),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 4, top: 7, bottom: 7),
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFF868686)),
                                  borderRadius: BorderRadius.circular(33)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("최신순",
                                      style: TextStyle(
                                          fontFamily: "NotoSansKR",
                                          fontSize: 12.5,
                                          color: Color(0xFF868686),
                                          fontWeight: FontWeight.w400)),
                                  DropdownButton(
                                    // Add dropdown button properties here
                                    icon: const Icon(Icons.arrow_drop_down),
                                    iconSize: 20,
                                    elevation: 16,
                                    style: const TextStyle(
                                      color: Color(0xFF868686),
                                    ),
                                    underline: Container(),
                                    onChanged: (String? newValue) {
                                      // Add onChanged function here
                                    },
                                    items: <String>['최신순']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color(0xFFF0F0F0),
                        thickness: 1,
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const CardProductReview(
                              image: "assets/images/products/ryzen.jpg",
                              name: "AMD 라이젠 5 5600X 버미어정품 멀티팩",
                              rating: 4.07,
                            ),
                            const Divider(
                              color: Color(0xFFF0F0F0),
                              thickness: 1,
                              height: 20,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage(widget.account['image']),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 35,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(widget.account["name"],
                                                style: const TextStyle(
                                                    fontFamily: "NotoSansKR",
                                                    fontSize: 12.5,
                                                    color: Color(0xFF868686),
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            const Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xFFFFD233),
                                                    size: 11,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xFFFFD233),
                                                    size: 11,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xFFFFD233),
                                                    size: 11,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xFFFFD233),
                                                    size: 11,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xFFF0F0F0),
                                                    size: 11,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text("2022.12.09",
                                                      style: TextStyle(
                                                          height: -0.1,
                                                          fontFamily:
                                                              "NotoSansKR",
                                                          fontSize: 10,
                                                          color:
                                                              Color(0xFF868686),
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ],
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  SvgPicture.asset("assets/icon/save-post.svg")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                child: Text(SampleDatas.comments[index],
                                    style: const TextStyle(
                                        height: -0.1,
                                        fontFamily: "NotoSansKR",
                                        fontSize: 10,
                                        color: Color(0xFFA0A0A0),
                                        fontWeight: FontWeight.bold)),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Column(children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SvgPicture.asset(
                                  "assets/icon/lightning.svg",
                                  color: const Color(0xFF3E3DC5),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Expanded(
                                  child: Text(
                                      "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                                      maxLines: 3,
                                      style: TextStyle(
                                        fontFamily: "NotoSansKR",
                                        fontSize: 14,
                                        color: Color(0xFFA0A0A0),
                                      )),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SvgPicture.asset("assets/icon/lightning.svg"),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Expanded(
                                  child: Text(
                                      "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                                      maxLines: 3,
                                      style: TextStyle(
                                        fontFamily: "NotoSansKR",
                                        fontSize: 14,
                                        color: Color(0xFFA0A0A0),
                                      )),
                                )
                              ],
                            )
                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Color(0xFFF0F0F0),
                        thickness: 1,
                        height: 20,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SvgPicture.asset("assets/icon/comment.svg"),
                            const SizedBox(
                              width: 8,
                            ),
                            const Expanded(
                                child: Text("댓글 달기..",
                                    maxLines: 3,
                                    style: TextStyle(
                                      height: -0.2,
                                      fontFamily: "NotoSansKR",
                                      fontSize: 10,
                                      color: Color(0xFF616161),
                                    )))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
