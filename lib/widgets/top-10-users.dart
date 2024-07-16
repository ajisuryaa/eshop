import 'package:eshop/views/account-profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Top10Users extends StatelessWidget {
  final List<dynamic> listUsers;
  const Top10Users({Key? key, required this.listUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listUsers.length,
        itemBuilder: (context, index) {
          String userName = listUsers[index]['name'];
          String userImage = listUsers[index]['image'];
          ;
          bool isFirstUser = index == 0;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccountProfile(
                            title: "랭킹 1위",
                            subtitle: "베스트 리뷰어",
                          )));
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(1),
                        height: 104,
                        width: 104,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0),
                            borderRadius: BorderRadius.circular(104)),
                        child: Image.asset(userImage, fit: BoxFit.cover),
                      ),
                      if (isFirstUser)
                        Positioned(
                            top: 0,
                            child: SvgPicture.asset("assets/icon/crown-1.svg")),
                    ],
                  ),
                ),
                Text(userName,
                    style: const TextStyle(
                        fontFamily: "NotoSansKR",
                        fontSize: 14,
                        color: Color(0xFF616161))),
              ],
            ),
          );
        },
      ),
    );
  }
}
