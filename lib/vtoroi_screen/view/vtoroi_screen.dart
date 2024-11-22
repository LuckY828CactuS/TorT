import 'package:flutter/material.dart';
import 'package:torti/glavn_screen/view/home_page.dart';
import 'package:torti/theme/theme_data.dart';

class My2App extends StatelessWidget {
  const My2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: const SecondScreen(title: 'Горы'),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.title});
  final String title;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int? _value = null;
  final List<String> imagePaths = [
    'lib/assets/images/tort2.jpg',
    'lib/assets/images/tort3.jpg',
    'lib/assets/images/tort4.jpg',
    'lib/assets/images/tort5.jpg',
    'lib/assets/images/tort6.jpg',
  ];
  bool _1sChecked = false;
  bool _2sChecked = false;

  @override
  Widget build(BuildContext context) {
    String selectedImagePath = _getSelectedImagePath();
   
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            border: Border.all(
              color: const Color.fromRGBO(255, 238, 0, 1.0), // Цвет каймы
              width: 2.0, // Ширина каймы
            ),
          ),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                ); // Возвращает на предыдущую страницу
              },
            ),
            title: Text(widget.title),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 250,
                height: 45,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 58, 163, 176),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
                child: const Text(
                  'Какой хотите торт ?',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                title: const Text(
                  'шоколадный ',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                leading: Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (int? value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
                tileColor: const Color.fromARGB(255, 58, 163, 176),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                title: const Text(
                  'ягодный',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                leading: Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (int? value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
                tileColor: const Color.fromARGB(255, 58, 163, 176),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 250,
                height: 45,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 58, 163, 176),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
                child: const Text(
                  'Какой формы вы хотите торт ?',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                title: const Text(
                  'Многоярусный',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                value: _1sChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _1sChecked = value!;
                  });
                },
                activeColor: Colors.green, // Цвет чекбокса при выборе
                checkColor: const Color.fromARGB(255, 0, 0, 0), // Цвет галочки внутри чекбокса
                tileColor: const Color.fromARGB(255, 58, 163, 176), // Цвет фона ListTile
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                title: const Text(
                  'Одноярустный',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                value: _2sChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _2sChecked = value!;
                  });
                },
                activeColor: Colors.green, // Цвет чекбокса при выборе
                checkColor: const Color.fromARGB(255, 0, 0, 0), // Цвет галочки внутри чекбокса
                tileColor: const Color.fromARGB(255, 58, 163, 176), // Цвет фона ListTile
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 58, 163, 176), // Цвет фона
                  borderRadius: BorderRadius.circular(10), // Закругленные углы
                  border: Border.all(
                    color: const Color.fromRGBO(255, 238, 0, 1.0), // Цвет окантовки
                    width: 1.0, // Ширина окантовки
                  ),
                ),
                child: Column(
                  children: [
                   
                   
                    if (selectedImagePath.isNotEmpty)
                    Image.asset(
                      _getSelectedImagePath(),
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 String _getSelectedImagePath() {
    if (_value == null) {
      return ''; // Возвращаем пустую строку, если _value равно null
    }

    if (_value == 1) {
      if (_1sChecked && _2sChecked) {
        return imagePaths[2]; // Кита
      } else if (_1sChecked) {
        return imagePaths[0]; // Элбрус
      } else if (_2sChecked) {
        return imagePaths[1]; // Фудзияма
      } else {
        return '';
      }
    } else if (_value == 2) {
      if (_1sChecked && _2sChecked) {
        return imagePaths[0]; // Анино
      } else if (_1sChecked) {
        return imagePaths[3]; // Эверест
      } else if (_2sChecked) {
        return imagePaths[4]; // Яри
      } else {
        return '';
      }
    } else {
      return '';
    }
  }
}