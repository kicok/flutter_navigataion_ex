# Navigation 종류

1. Stack Navigation

- 화면을 stack 형태로 관리

2. Tab Navigation

- AppBar Bottom Navigation Bar (Top Tab Navigation)

  - Tab Navigation Bar가 AppBar 아래에 위치

- Bottom Navigation Bar (Bottom Tab Navigation)
  - Tab Navigation Bar가 화면 아래에 위치

3. Drawer Navigation

- 통상 AppBar에 위치한 메튜 버튼을 클릭했을때 화면에 overlay 형태로 표시되는 Navigation 메뉴

# AppBar Bottom Navigation Bar (Top Tab Navigation)

- AppBar의 bottom property 이용

  - DefaultTabController ( or TabController)

    - Scaffold Widget을 감쌈
    - length: Tab및 Tab을 선택했을때 표시될 content의 개수
    - DefaultTabController는 선택된 Tab과 content간의 동기를 자동으로 유지시켜주는 역할

  - TabBar

    - AppBar.bottom에 표시될 위젯
    - tabs: array of Tab 위젯
    - 보통 '아이콘' 또는 '아이콘 + 텍스트'의 형태로 표시됨

  - TabBarView

    - 각 tab이 선택됐을때 표시될 content (or screen)

  - Automatic State Management

# Bottom Navigation Bar (Bottom Tab Navigation)

- Scaffold의 bottomNavigationBar property 이용

  - BottomNavigationBar 위젯

    - items property: BottomNavigationBarItem 위젯

  - type

    - BottomNavigationBarType.fixed (tab의 개수가 4개 미만일 때의 default)
    - BottomNavigationBarType.shifting (tab의 개수가 4개 이상일 때의 default)

  - Manual State management
    - currentIndex property: 현재 선택된 tab의 인덱스
    - onTap method: 이 method를 이용해서 currentIndex 업데이트
  - selectedItemColor
    - 각 tab이 선택됐을 때 사용될 tab의 색깔
