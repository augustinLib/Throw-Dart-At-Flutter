import 'package:flutter/material.dart';
import 'package:webtoon_proto/widgets/button.dart';

void main() {
  runApp(const App());
}

// main함수의 runApp() 메서드는 위젯을 인자로 받는다.
// 이때, runApp()의 인자로 들어간 widget이 root widget이 된다.
class App extends StatelessWidget {
  const App({super.key});

  // 모든 widget은 build() 메서드를 가지고 있어야 한다. (override)
  @override
  Widget build(BuildContext context) {
    // build() 메서드는 widget을 return해야 함
    // root widget은 아래의 두 가지중 하나를 return해야 한다.
    // 1. MaterialApp : google material design을 구현한 앱
    // 2. CupertinoApp : apple iOS design을 구현한 앱
    // 디자인을 custom하고 싶어도 일단 둘 중 하나를 return해야 한다.
    return MaterialApp(
      // Scaffold : flutter의 모든 화면은 scaffold widget을 기반으로 만들어진다.
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          // all : 상하좌우 10씩 padding
          // all 말고 only를 쓰면 원하는 방향만 padding을 줄 수 있다.
          // EdgeInsets.symmetric(horizontal: 10, vertical: 20) -> 상하 10, 좌우 20
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox : 빈 박스를 만들어주는 widget
              const SizedBox(
                height: 80,
              ),
              Row(
                // Row의 mainAxis = 가로축
                // Row의 crossAxisAlignment = 세로축
                // mainAxis는 주 축이고, crossAxisAlignment는 보조축이다.
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // Column의 mainAxis = 세로축
                    // Column의 crossAxisAlignment = 가로축
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Hey, Augustin",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "\$5 194 482",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // Container : 빈 박스를 만들어주는 widget
                  // HTML의 div와 같은 역할

                  // Custom widget인 button 사용
                  Button(
                    text: "Transfer",
                    bgcolor: Color(0xFFF1B33B),
                    textcolor: Colors.black,
                  ),
                  Button(
                    text: "Request",
                    bgcolor: Color(0xFF1F2123),
                    textcolor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wallets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // clipBehavior : child가 container의 영역을 벗어나면 어떻게 할지 정하는 속성
                // Clip.harEdge : child가 container의 영역을 벗어나면 container의 영역을 벗어난 부분을 자른다.
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: const Color(0xFF1F2123),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Euro",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                "6 428",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "EUR",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // 해당 요소만 transform하게 됨으로써 다른 요소에 영향을 미치지 않음
                      Transform.scale(
                        scale: 2.2,
                        child: Transform.translate(
                          // offset : x, y 좌표를 지정해줌
                          offset: const Offset(-5, 12),
                          child: const Icon(
                            Icons.euro_rounded,
                            color: Colors.white,
                            size: 88,
                          ),
                        ),
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
