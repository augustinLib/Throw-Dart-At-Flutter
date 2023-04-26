# Introduction

## How Flutter Works
Swift, Java, Kotlin 등의 native framework는 os와 직접적으로 소통하여 앱을 만들어낸다.  
반면 Flutter는 os와 직접적으로 소통하지 않음  
Flutter는 기존 cross-platform framework, 혹은 native framework와 달리 os와 직접적으로 소통하지 않고, 비디오 게임 엔진처럼 작동한다.  
이러한 이유로, Flutter는 native widget을 사용하지 않는다  


유저가 앱을 실행시키면, 앱은 flutter 라이브러리를 불러오게 되고, 개발자가 만든 UI를 엔진을 사용하여 렌더링한다.  



## Flutter vs React Native
React Native👍
- 네이티브 앱 운영체제 상에서 가능한 위젯을 사용해야 하는 경우  
- 디자인이 iOS 혹은 Android 앱처럼 보이게끔 만들고 싶은 경우  

Flutter👍
- 세밀한 디자인 요구사항이 있거나 100% 커스터마이징하고 싶은 경우
- 외부 패키지에 의존하지 않고 고수준의 애니메이션을 구현하고 싶은 경우