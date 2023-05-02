import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  // final 키워드를 사용하면, 변수를 한 번만 할당할 수 있다. (javascript와 typescript에서의 const와 같은 역할)
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // clipBehavior : child가 container의 영역을 벗어나면 어떻게 할지 정하는 속성
      // Clip.harEdge : child가 container의 영역을 벗어나면 container의 영역을 벗어난 부분을 자른다.
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        // isInverted가 true이면 Colors.white, false이면 const Color(0xFF1F2123)
        color: isInverted ? Colors.white : _blackColor,
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
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? _blackColor : Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
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
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
