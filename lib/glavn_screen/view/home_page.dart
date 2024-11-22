import 'package:flutter/material.dart';
import 'package:torti/theme/theme_data.dart';
import 'package:torti/vtoroi_screen/view/vtoroi_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tort',
      theme: myTheme,
      home: const MyHomePage(title: 'ТорТ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> imagePaths = [
    'lib/assets/images/tort2.jpg',
    'lib/assets/images/tort3.jpg',
    'lib/assets/images/tort4.jpg',
    'lib/assets/images/tort5.jpg',
    'lib/assets/images/tort6.jpg',
  ];

  void showRecipeDialog(String recipe) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Рецепт торта'),
          content: Text(recipe),
          actions: <Widget>[
            TextButton(
              child: const Text('Закрыть'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          // Отступ между AppBar и слайдером
          const SizedBox(height: 20),
          // Строка с фотографиями посередине сверху
          Center(
            child: SizedBox(
              height: 150, // Высота контейнера для GridView
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
                itemCount: 1000, // Бесконечная прокрутка
                itemBuilder: (context, index) {
                  int imageIndex = index % imagePaths.length;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      imagePaths[imageIndex],
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20), // Отступ между GridView и кнопками
          // Список тортов прижат к левому краю
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      showRecipeDialog('Рецепт шоколадного торта:\n\nИнгредиенты:\n- 200 г шоколада\n- 100 г сливочного масла\n- 200 г сахара\n- 4 яйца\n- 100 г муки\n\nПриготовление:\n1. Растопить шоколад и масло.\n2. Добавить сахар и яйца.\n3. Постепенно добавить муку.\n4. Выпекать при 180°C в течение 30 минут.');
                    },
                    child: const Text('Шоколадный торт'),
                  ),
                  const SizedBox(height: 10), // Отступ между кнопками
                  ElevatedButton(
                    onPressed: () {
                      showRecipeDialog('Рецепт ванильного торта:\n\nИнгредиенты:\n- 200 г сахара\n- 100 г сливочного масла\n- 4 яйца\n- 100 г муки\n- 1 ч. ложка ванильного экстракта\n\nПриготовление:\n1. Взбить масло и сахар.\n2. Добавить яйца по одному.\n3. Добавить муку и ванильный экстракт.\n4. Выпекать при 180°C в течение 30 минут.');
                    },
                    child: const Text('Ванильный торт'),
                  ),
                  const SizedBox(height: 10), // Отступ между кнопками
                  ElevatedButton(
                    onPressed: () {
                      showRecipeDialog('Рецепт фруктового торта:\n\nИнгредиенты:\n- 200 г сахара\n- 100 г сливочного масла\n- 4 яйца\n- 100 г муки\n- 200 г свежих фруктов\n\nПриготовление:\n1. Взбить масло и сахар.\n2. Добавить яйца по одному.\n3. Добавить муку.\n4. Добавить нарезанные фрукты.\n5. Выпекать при 180°C в течение 30 минут.');
                    },
                    child: const Text('Фруктовый торт'),
                  ),
                  const SizedBox(height: 10), // Отступ между кнопками
                  ElevatedButton(
                    onPressed: () {
                      showRecipeDialog('Рецепт медовика:\n\nИнгредиенты:\n- 200 г сахара\n- 100 г сливочного масла\n- 4 яйца\n- 100 г муки\n- 100 г меда\n\nПриготовление:\n1. Взбить масло и сахар.\n2. Добавить яйца по одному.\n3. Добавить муку и мед.\n4. Выпекать при 180°C в течение 30 минут.');
                    },
                    child: const Text('Медовик'),
                  ),
                  const SizedBox(height: 10), // Отступ между кнопками
                  ElevatedButton(
                    onPressed: () {
                      showRecipeDialog('Рецепт красного бархата:\n\nИнгредиенты:\n- 200 г сахара\n- 100 г сливочного масла\n- 4 яйца\n- 100 г муки\n- 1 ч. ложка какао-порошка\n\nПриготовление:\n1. Взбить масло и сахар.\n2. Добавить яйца по одному.\n3. Добавить муку и какао-порошок.\n4. Выпекать при 180°C в течение 30 минут.');
                    },
                    child: const Text('Красный бархат'),
                  ),
                ],
              ),
            ),
          ),
          // Иконка тортика снизу посередине
          Center(
            child: IconButton(
              icon: const Icon(Icons.cake),
              iconSize: 48,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const My2App()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}