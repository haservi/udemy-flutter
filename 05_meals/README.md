# 음식 레시피 앱 만들기

onWillPop 해당 기능이 deprecated 됐으며, PopScope 변경('WillPopScope' is deprecated and shouldn't be used. Use
PopScope instead. This feature was deprecated after v3.12.0-1.0.pre) 이 됐다. 기존 코드를 아래와 같은 형태 였다면 그
밑처럼 해줘야 합니다.

```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop({
          Filter.glutenFree: _glutenFreeFilterSet,
          Filter.lactoseFree: _lactoseFreeFilterSet,
          Filter.vegetarian: _vegetarianFilterSet,
          Filter.vegan: _veganFilterSet,
        });
        return false;
      },
      child: Column(
        children: [
        ],
      ),
    ),
  );
}
```

```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
        Navigator.of(context).pop({
          Filter.glutenFree: _glutenFreeFilterSet,
          Filter.lactoseFree: _lactoseFreeFilterSet,
          Filter.vegetarian: _vegetarianFilterSet,
          Filter.vegan: _veganFilterSet,
        });
      },
      child: Column(
        children: [
        ],
      ),
    ),
  );
}
```

위의 설정은 최근 flutter를 업데이트 하면서 발생한 이슈로 판단됩니다. 3.10을 쓰다가 3.20 올리면서 발생한 이슈라고 생각됩니다.

이와 관련된 이슈로 3.16 이전 버전의 Flutter는 Gradle의 선언적 픍러그인 {} 블록을 쓰기 때문에
변경([문서 링크](https://docs.flutter.dev/release/breaking-changes/flutter-gradle-plugin-apply)) 해야 합니다.

학습 중 안드로이드 폰이 어느 순간 배포가 안돼서 삽질을 조금 했는데 문제의 원인은 C Type 케이블이었습니다.  
계속 배포가 안돼서 apk를 만들어서 직접 올려보려다가 폰으로 업로드가 중간에 안돼서 혹시나 바꿔보니 잘 되던... 혹시나 안되면 케이블 문제일 수 있습니다.

### riverpod

학습 중 상태 관리를 위해 하나의 상태를 모든 화면에서 끌고 들어가는 부분이 있는데 reverpod를 쓰면 이러한 상태 관리를 조금 더 쉽게 할 수 있는 것 같습니다.
[공식 문서](https://riverpod.dev/)를 읽어보면 좋을 거 같다 생각합니다.