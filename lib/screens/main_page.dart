import 'package:flutter/material.dart';
import 'package:studi_d/components/custom_chip.dart';

class MainPage extends StatelessWidget {
  final List chipItem = ["#2023", "#TODAYISMONDAY"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "자유톡",
          style: TextStyle(color: Color(0xff1D232B)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.notifications_none,
              color: Color(0xffD9D9D9),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              leading: Image.asset(
                "assets/person_icon.png",
                height: 45,
                width: 45,
              ),
              title: Row(
                children: [
                  Text("안녕 나 응애",
                      style: TextStyle(
                          color: Color(0xff1D232B),
                          fontWeight: FontWeight.w700,
                          fontSize: 14)),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                    child: Image.asset(
                      "assets/verified_icon.png",
                      height: 18,
                      width: 18,
                    ),
                  ),
                  Text("1일전",
                      style: TextStyle(
                          color: Color(0xff8591A7),
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                ],
              ),
              subtitle: Row(
                children: [
                  Text("165cm",
                      style: TextStyle(
                          color: Color(0xff8591A7),
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                      child: Image.asset(
                        "assets/small_ellipse.png",
                      ),
                    ),
                  ),
                  Text("53kg",
                      style: TextStyle(
                          color: Color(0xff8591A7),
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                ],
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: Color(0xff01B99F),
                    borderRadius: BorderRadius.circular(24)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Text("팔로우",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
                      style: TextStyle(
                          color: Color(0xff1D232B),
                          fontWeight: FontWeight.w700,
                          fontSize: 14)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                        "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어? \n\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아??? \n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!",
                        style: TextStyle(
                            color: Color(0xff1D232B),
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    CustomChip("#2023"),
                    CustomChip("#TODAYISMONDAY"),
                    CustomChip("#TOP"),
                    CustomChip("#POPS!"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    CustomChip("#WOW"),
                    CustomChip("#ROW"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Image.asset(
                "assets/post.jpg",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 8),
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xffAFb9CA),
                      size: 32,
                    ),
                  ),
                  Text("5",
                      style: TextStyle(
                          color: Color(0xffAFb9CA),
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 8),
                    child: Icon(Icons.comment_outlined,
                        color: Color(0xffAFb9CA), size: 32),
                  ),
                  Text("5",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffAFb9CA))),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 8),
                    child: Icon(Icons.bookmark_outline,
                        color: Color(0xffAFb9CA), size: 32),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 8),
                    child: Icon(Icons.more_horiz,
                        color: Color(0xffAFb9CA), size: 32),
                  ),
                ],
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              leading: Image.asset(
                "assets/person_icon.png",
                height: 45,
                width: 45,
              ),
              title: Row(
                children: [
                  Text("안녕 나 응애",
                      style: TextStyle(
                          color: Color(0xff1D232B),
                          fontWeight: FontWeight.w700,
                          fontSize: 14)),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                    child: Image.asset(
                      "assets/verified_icon.png",
                      height: 18,
                      width: 18,
                    ),
                  ),
                  Text("1일전",
                      style: TextStyle(
                          color: Color(0xff8591A7),
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                ],
              ),
              trailing:
                  Icon(Icons.more_horiz, color: Color(0xffAFb9CA), size: 24),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
              leading: SizedBox(
                height: 45,
                width: 45,
              ),
              title: Text(
                  "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!",
                  style: TextStyle(
                      color: Color(0xff1D232B),
                      fontWeight: FontWeight.w500,
                      fontSize: 14)),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 8, 4),
                        child: Icon(
                          Icons.favorite_border,
                          color: Color(0xffAFb9CA),
                          size: 24,
                        ),
                      ),
                      Text("5",
                          style: TextStyle(
                              color: Color(0xffAFb9CA),
                              fontWeight: FontWeight.w500,
                              fontSize: 14)),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Icon(Icons.comment_outlined,
                            color: Color(0xffAFb9CA), size: 24),
                      ),
                      Text("5",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xffAFb9CA))),
                    ],
                  ),
                  ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                    leading: Image.asset(
                      "assets/person_icon.png",
                      height: 45,
                      width: 45,
                    ),
                    title: Row(
                      children: [
                        Text("ㅇㅅㅇ",
                            style: TextStyle(
                                color: Color(0xff1D232B),
                                fontWeight: FontWeight.w700,
                                fontSize: 14)),
                        Text("1일전",
                            style: TextStyle(
                                color: Color(0xff8591A7),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                      ],
                    ),
                    subtitle: Column(
                      children: [
                        Text("오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다",
                            style: TextStyle(
                                color: Color(0xff1D232B),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 4, 8, 4),
                              child: Icon(
                                Icons.favorite_border,
                                color: Color(0xffAFb9CA),
                                size: 24,
                              ),
                            ),
                            Text("5",
                                style: TextStyle(
                                    color: Color(0xffAFb9CA),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.image_outlined, color: Color(0xffAFb9CA)),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Text(
                        "댓글을 남겨주세요.",
                        style: TextStyle(color: Color(0xffAFb9CA)),
                      )),
                  Text(
                    "등록",
                    style: TextStyle(color: Color(0xffAFb9CA)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
