import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: '이탈리안 요리',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: '빠른 요리',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: '햄버거 요리',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: '독일 요리',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: '가벼운 요리',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: '이국적인 요리',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: '아침 요리',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: '아시안 요리',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: '프랑스 요리',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: '여름 요리',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: '토마토 소스 스파게티',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4개의 토마토',
      '1 큰술의 올리브 오일',
      '1개의 양파',
      '250g의 스파게티',
      '양념',
      '치즈 (선택사항)'
    ],
    steps: [
      '토마토와 양파를 작게 썰어주세요.',
      '물을 끓여 소금을 넣어주세요.',
      '스파게티를 넣어주세요 - 약 10~12분 정도 요리하세요.',
      '동시에, 올리브 오일을 데워 양파를 넣어주세요.',
      '2분 후, 토마토 조각, 소금, 후추 및 기타 양념을 넣어주세요.',
      '스파게티가 다 익으면 소스가 완성됩니다.',
      '완성된 요리 위에 치즈를 뿌려주세요.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: '토스트 하와이',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: ['흰색 빵 1조각', '햄 1조각', '파인애플 1조각', '치즈 1~2장', '버터'],
    steps: [
      '흰색 빵 한 쪽에 버터를 바르세요.',
      '햄, 파인애플 및 치즈를 흰색 빵 위에 층 쌓아주세요.',
      '오븐에서 200°C에서 약 10분간 구워주세요.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: '클래식 햄버거',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: ['소고기 300g', '토마토 1개', '오이 1개', '양파 1개', '케첩', '버거 번 2개'],
    steps: [
      '고기를 2개의 패티로 모양을 만들어주세요.',
      '패티를 한쪽면당 약 4분씩 굽세요.',
      '빵을 약 1분씩 빠르게 굽어주세요.',
      '버거 번에 케첩을 발라주세요.',
      '토마토, 오이, 양파와 함께 햄버거를 제공해주세요.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: '비너 슈니첼',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '송아지 안심 8장',
      '계란 4개',
      '빵 가루 200g',
      '밀가루 100g',
      '버터 300ml',
      '식물성 오일 100g',
      '소금',
      '레몬 조각'
    ],
    steps: [
      '송아지고기를 2~4mm 두께로 가늘게 때어서 양쪽에 소금을 뿌려주세요.',
      '판에 단단하게 계란을 휘젓습니다.',
      '송아지고기를 밀가루에 가볍게 입혀서 계란에 담가주고 마지막으로 빵 가루에 뒤집어주세요.',
      '큰 팬에 버터와 식물성 오일을 데우고 비너 슈니첼을 양면이 고루 황금갈색이 될 때까지 약간씩 약 4분씩 굽습니다.',
      '팬을 자주 흔들어서 슈니첼이 기름에 둘러싸이고 빵가루가 노릇하게 되도록 합니다.',
      '슈니첼을 꺼내서 주방용 종이에 기름을 제거하고 다진 파슬리를 기름에 굽습니다.',
      '따뜻한 접시에 슈니첼을 올리고 파슬리와 레몬 조각으로 장식해주세요.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: '훈제 연어 샐러드',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      '아루귤라',
      '양배추',
      '파슬리',
      '펜넬',
      '훈제 연어 200g',
      '머스타드',
      '발사믹 식초',
      '올리브 오일',
      '소금과 후추'
    ],
    steps: [
      '샐러드와 허브를 씻고 자르세요.',
      '연어를 다지세요.',
      '머스타드, 식초 및 올리브 오일을 드레싱으로 만들어주세요.',
      '샐러드를 준비하세요.',
      '연어 조각과 드레싱을 추가하세요.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: '맛있는 오렌지 무스',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '젤라틴 시트 4장',
      '오렌지 주스 150ml',
      '설탕 80g',
      '요거트 300g',
      '크림 200g',
      '오렌지 껍질'
    ],
    steps: [
      '냄비에 젤라틴을 녹입니다.',
      '오렌지 주스와 설탕을 넣어주세요.',
      '냄비를 불에서 내려주세요.',
      '요거트 2큰술을 넣어주세요.',
      '남은 요거트에 젤라틴을 섞어주세요.',
      '냉장고에서 식혀주세요.',
      '크림을 휘핑하고 오렌지 혼합물에 섞어주세요.',
      '최소 4시간 이상 냉장고에 넣어주세요.',
      '오렌지 껍질과 함께 제공해주세요.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: '팬케이크',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '밀가루 1 1/2컵',
      '베이킹 파우더 3 1/2작은술',
      '소금 1작은술',
      '화이트 설탕 1큰술',
      '우유 1 1/4컵',
      '달걀 1개',
      '녹인 버터 3큰술',
    ],
    steps: [
      '큰 볼에 밀가루, 베이킹 파우더, 소금 및 설탕을 체에 걸러주세요.',
      '중약 불에서 양초를 두르거나 팬을 예열시켜주세요.',
      '배터를 부어주세요. 한 팬케이크에 대략 1/4컵을 사용합니다.',
      '양쪽 모두 갈색이 나올 때까지 구워주세요. 뜨거운 상태로 제공하세요.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: '크림 인도 치킨 커리',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 마리의 닭 가슴살',
      '양파 1개',
      '다진 마늘 2쪽',
      '생강 1조각',
      '아몬드 4큰술',
      '카이엔 후추 1작은술',
      '코코넛 밀크 500ml',
    ],
    steps: [
      '닭 가슴살을 얇게 썰어서 튀긴 후 볶아주세요.',
      '양파, 마늘 및 생강을 갈아서 냄비에 넣고 볶아주세요.',
      '양념을 넣고 볶아주세요.',
      '닭 가슴살을 넣고 250ml의 물과 함께 10분간 조리하세요.',
      '코코넛 밀크를 추가하세요.',
      '밥과 함께 제공하세요.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: '초콜릿 수플레',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '녹인 버터 1작은술',
      '화이트 설탕 2큰술',
      '70% 다크 초콜릿 2온스, 조각낸 것',
      '버터 1큰술',
      '밀가루 1큰술',
      '차가운 우유 4 1/3큰술',
      '소금 1꼬집',
      '카이엔 후추 1꼬집',
      '큰 달걀 노른자 1개',
      '큰 달걀 흰자 2개',
      '크림 오브 타르타르 1꼬집',
      '화이트 설탕 1큰술',
    ],
    steps: [
      '오븐을 190°C로 예열하세요. 둥근 베이킹용 팬에 베이킹 종이를 깔아주세요.',
      '먼저, 녹인 버터로 2개의 라메킨 바닥과 옆면을 가볍게 발라주세요. 바닥과 옆면을 모두 베이킹용 설탕으로 둘러주세요.',
      '달걀, 우유 및 녹인 버터를 사용해 고칠 때까지 흰색 설탕으로 조합하세요.',
      '중불에서 팬에 담은 초콜릿 조각을 녹이세요.',
      '다른 팬에서 버터를 녹이고 밀가루를 넣어주세요.',
      '우유를 천천히 넣어주세요.',
      '평평한 곳에 소금과 카이엔 후추를 넣고 고르게 섞어주세요.',
      '달걀 노른자를 넣어주세요.',
      '뜨거운 물에 담아 녹인 초콜릿과 만든 반죽을 섞어주세요.',
      '달걀 흰자를 천천히 걸쳐주세요.',
      '천천히 설탕을 넣고 15초 동안 섞어주세요.',
      '나머지 설탕을 넣어주세요.',
      '굳은 거품이라는 자리를 잡은 후에 설탕을 넣고 섞어주세요.',
      '섞인 달걀 흰자를 초콜릿에 천천히 섞어주세요.',
      '노른자의 반절을 반절로 넣고 섞어주세요.',
      '남은 달걀 흰자를 넣고 주걱으로 섞어주세요. 바닥에서 올려주세요.',
      '오븐에서 수플레를 12~15분 동안 굽습니다.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: '아스파라거스 샐러드와 체리 토마토',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      '하얀 아스파라거스와 녹색 아스파라거스',
      '잣 30g',
      '체리 토마토 300g',
      '샐러드',
      '소금, 후추, 올리브 오일'
    ],
    steps: [
      '아스파라거스를 씻고 깎고 자릅니다.',
      '소금이 들어간 물에 삶아주세요.',
      '아스파라거스에 소금과 후추를 넣어주세요.',
      '잣을 볶아주세요.',
      '체리 토마토를 반으로 썰어주세요.',
      '아스파라거스, 샐러드 및 드레싱을 섞어주세요.',
      '바게트와 함께 제공하세요.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
