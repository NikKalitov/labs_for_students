// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // Создание state
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
// WidgetsBindingObserver необходим для отслеживания состояния приложения (в фоне или нет)
    with
        WidgetsBindingObserver {
  // Выводимое число
  int _number = 0;
  // Метод, увеличивающий число на 1
  void _increase() {
    _number++;
    setState(() {});
  }

  // Метод, который вызывается первым при создании state, но нет доступа к контексту
  @override
  void initState() {
    super.initState();
    print('initState');
    // Добавили возможность отслеживать состояние приложения
    WidgetsBinding.instance.addObserver(this);
  }

  // Вызывается вторым при создании state, уже есть доступ к контексту
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  // Передает дерево виджетов для рендеринга, вызывается каждый раз при изменении state
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _increase,
              child: Text('Increase'),
            ),
            Text('$_number'),
          ],
        ),
      ),
    );
  }

  // Вызывается после того, как родительский виджет передаст новые зависимости
  // Можно получить старое состояние виджета, чтобы, например, сравнить его с новым
  // состоянием
  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  // Вызывается, когда виджет начинает пропадать
  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  // Вызывается, когда виджет удаляется из дерева виджетов
  @override
  void dispose() {
    super.dispose();
    print('dispose');
    // Удалили возможность отслеживать состояние приложения (необходимо)
    WidgetsBinding.instance.removeObserver(this);
  }

  // Метод, который вызывается, если приложение меняет состояние (уходит в фон или наоборот)
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      print('Приложение переходит в фоновый режим');
    }
    if (state == AppLifecycleState.resumed) {
      print('Приложение выходит из фонового режима');
    }
  }
}
