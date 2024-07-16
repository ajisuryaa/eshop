import 'package:eshop/dummy/sample_datas.dart';
import 'package:eshop/utils/colors-configuration.dart';
import 'package:eshop/widgets/card-product.dart';
import 'package:eshop/widgets/carousel-with-indicator.dart';
import 'package:eshop/widgets/search-bar.dart';
import 'package:eshop/widgets/top-10-users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController _searchTxtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPickers.backgroundColors,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey,
        title: const Text(
          "Logo",
          style: TextStyle(
              fontSize: 24,
              fontFamily: "Roboto",
              color: Color(0xFF5D5FEF),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: ColorPickers.backgroundColors,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Search Bar
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(22, 34, 22, 34),
                child: SearchBarCustom(
                  onChange: (value) {},
                  onClear: () {},
                  controller: _searchTxtController,
                ),
              ),
              //Courousels View
              Container(
                color: Colors.white,
                height: 221,
                width: MediaQuery.of(context).size.width,
                child: CarouselWithIndicator(),
              ),
              //List Product
              Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: const EdgeInsets.fromLTRB(16, 28, 16, 35),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("제일 핫한 리뷰를 만나보세요",
                                    style: TextStyle(
                                        fontFamily: "NotoSansKR",
                                        fontSize: 12)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "리뷰️  랭킹⭐ top 3",
                                  style: TextStyle(
                                      fontFamily: "NotoSansKR",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      CardProduct(
                        image: "assets/images/products/1.jpg",
                        name: "LG전자 스탠바이미 27ART10AKPL (스탠",
                        plan1:
                            "화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.",
                        plan2: "스탠바이미는 사랑입니다!️",
                        rating: 4.89,
                        totalRating: 216,
                        tag1: "LG전자",
                        tag2: "편리성",
                        index: 0,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CardProduct(
                          image: "assets/images/products/2.jpg",
                          name: "LG전자  울트라HD 75UP8300KNA (스탠드)",
                          plan1: "화면 잘 나오고... 리모컨 기능 좋습니다.",
                          plan2:
                              "넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!",
                          rating: 4.36,
                          totalRating: 136,
                          tag1: "LG전자",
                          tag2: "고화질",
                          index: 1),
                      SizedBox(
                        height: 20,
                      ),
                      CardProduct(
                        image: "assets/images/products/3.jpg",
                        name:
                            "라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)",
                        plan1:
                            "반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다",
                        plan2:
                            "중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고",
                        rating: 3.98,
                        totalRating: 98,
                        tag1: "라익미",
                        tag2: "가성비",
                        index: 2,
                      )
                    ],
                  )),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(16, 28, 16, 28),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("골드 계급 사용자들이예요",
                        style:
                            TextStyle(fontFamily: "NotoSansKR", fontSize: 12)),
                    const Text("베스트 리뷰어 🏆 Top10",
                        style: TextStyle(
                            fontFamily: "NotoSansKR",
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    Expanded(
                      child: Top10Users(listUsers: SampleDatas.top10Users),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 16,
              ),
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(16, 28, 16, 28),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("LOGO Inc.",
                          style: TextStyle(
                              fontFamily: "NotoSansKR",
                              fontSize: 14,
                              color: Color(0xFF868686),
                              fontWeight: FontWeight.w500)),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                              child: Center(
                            child: Text("회사 소개",
                                style: TextStyle(
                                    fontFamily: "NotoSansKR",
                                    fontSize: 13,
                                    color: Color(0xFF868686),
                                    fontWeight: FontWeight.w400)),
                          )),
                          SizedBox(
                            height: 9,
                            child: VerticalDivider(
                              color: Color(0xFFC8C8C8),
                              thickness: 1,
                            ),
                          ),
                          Expanded(
                              child: Center(
                            child: Text("회사 소개",
                                style: TextStyle(
                                    fontFamily: "NotoSansKR",
                                    fontSize: 13,
                                    color: Color(0xFF868686),
                                    fontWeight: FontWeight.w400)),
                          )),
                          SizedBox(
                            height: 9,
                            child: VerticalDivider(
                              color: Color(0xFFC8C8C8),
                              thickness: 1,
                            ),
                          ),
                          Expanded(
                              child: Center(
                            child: Text("회사 소개",
                                style: TextStyle(
                                    fontFamily: "NotoSansKR",
                                    fontSize: 13,
                                    color: Color(0xFF868686),
                                    fontWeight: FontWeight.w400)),
                          )),
                          SizedBox(
                            height: 9,
                            child: VerticalDivider(
                              color: Color(0xFFC8C8C8),
                              thickness: 1,
                            ),
                          ),
                          Expanded(
                              child: Center(
                            child: Text("회사 소개",
                                style: TextStyle(
                                    fontFamily: "NotoSansKR",
                                    fontSize: 13,
                                    color: Color(0xFF868686),
                                    fontWeight: FontWeight.w400)),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icon/bxs_send.svg",
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text("review@logo.com",
                              style: TextStyle(
                                  fontFamily: "NotoSansKR",
                                  fontSize: 13,
                                  color: Color(0xFF868686),
                                  fontWeight: FontWeight.w400,
                                  height: -0.2)),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            height: 25,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFF868686)),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("KOR",
                                    style: TextStyle(
                                        fontFamily: "NotoSansKR",
                                        fontSize: 14.5,
                                        color: Color(0xFF868686),
                                        fontWeight: FontWeight.w400)),
                                DropdownButton(
                                  // Add dropdown button properties here
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 13,
                                  elevation: 16,
                                  style: const TextStyle(
                                    color: Color(0xFF868686),
                                  ),
                                  underline: Container(),
                                  onChanged: (String? newValue) {
                                    // Add onChanged function here
                                  },
                                  items: <String>['KOR']
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
                      const SizedBox(
                        height: 16,
                      ),
                      const SizedBox(
                        height: 16,
                        child: Divider(
                          thickness: 1,
                          color: Color(0xFFC8C8C8),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구",
                          style: TextStyle(
                              fontFamily: "NotoSansKR",
                              fontSize: 10,
                              color: Color(0xFF868686),
                              fontWeight: FontWeight.w400,
                              height: -0.2)),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
