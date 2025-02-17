# Приложение заметки

Приложение на Flutter, который представляет собой базовое приложение с минимальной функциональностью.В проекте реализованы базовые компоненты и функции, которые можно использовать в качестве основы для создания более сложных приложений.


## Начало работы



























### Установка и настройка

1. **Установка необходимого ПО**
   - Установите [Flutter](https://flutter.dev/)
   - Установите [Android Studio](https://developer.android.com/)
   - Установите [Python 3.9+](https://www.python.org/downloads/)
   - Установите [Visual Studio Code](https://code.visualstudio.com/download)

2. **Клонирование проекта**
   ```bash
   # Клонируйте репозиторий
   git clone https://github.com/sromanov103/dz52.git
   # Перейдите в директорию проекта
   cd dz52
   # Для установки зависимостей
   flutter pub get
   # Проверка зависимостей
   flutter doctor
   # Запустить приложение
   flutter run

3. **Настройка VSCode**
   - Откройте VSCode
   - Установите рекомендуемые расширения:
     - [Dart](https://dart.dev/tools/vs-code)
     - [Flutter](https://docs.flutter.dev/tools/vs-code)
4. **Настройка эмулятора**
   - Откройте Android Studio
   - Откройте Tools > Device Manager и создайте новый эмулятор.

## Структура проекта

```
├── android/                                # Код для Android-приложения
│   ├── app/                                # Основной код Android-приложения
│   │   ├── src/                            # Исходный код Android-приложения
│   │   │   ├── main/                       # Основной код Android-приложения
│   │   │   │   ├── java/                   # Java-код Android-приложения
│   │   │   │   ├── res/                    # Ресурсы Android-приложения
│   │   │   │   └── AndroidManifest.xml     # Манифест Android-приложения
│   │   └── test/                           # Тесты Android-приложения
│   └── gradle/                             # Конфигурация Gradle для Android-приложения
├── assets/                                 # Ресурсы приложения
│   ├── fonts/                              # Шрифты приложения
│   └── images/                             # Изображения приложения
├── ios/                                    # Код для iOS-приложения
│   ├── Runner/                             # Основной код iOS-приложения
│   │   ├── Assets.xcassets/                # Ресурсы iOS-приложения
│   │   ├── Base.lproj/                     # Локализация iOS-приложения
│   │   └── Info.plist                      # Информация о iOS-приложении
│   └── Podfile                             # Конфигурация CocoaPods для iOS-приложения
├── lib/                                    # Основной код приложения
│   ├── main.dart                           # Основной файл приложения
│   └── widgets/                            # Виджеты приложения
├── macos/                                  # Код для macOS-приложения
│   ├── Runner/                             # Основной код macOS-приложения
│   │   ├── Assets.xcassets/                # Ресурсы macOS-приложения
│   │   ├── Base.lproj/                     # Локализация macOS-приложения
│   │   └── Info.plist                      # Информация о macOS-приложении
│   └── Podfile                             # Конфигурация CocoaPods для macOS-приложения
├── test/                                   # Тесты приложения
│   ├── unit/                               # Юнит-тесты приложения
│   └── widget/                             # Тесты виджетов приложения
├── web/                                    # Код для web-приложения
│   ├── index.html                          # Основной файл web-приложения
│   └── main.dart.js                        # Основной файл web-приложения
├── windows/                                # Код для Windows-приложения
│   ├── runner/                             # Основной код Windows-приложения
│   │   ├── CMakeLists.txt                  # Конфигурация CMake для Windows-приложения
│   │   ├── main.cpp                        # Основной файл Windows-приложения
│   │   └── utils.cpp                       # Вспомогательный файл Windows-приложения
│   └── flutter/                            # Конфигурация Flutter для Windows-приложения
│       └── CMakeLists.txt                  # Конфигурация CMake для Flutter
├── .dart_tool/                             # Конфигурация Dart для приложения
│   ├── package_config.json                 # Конфигурация пакетов для приложения
│   └── flutter_build/                      # Конфигурация Flutter для приложения
├── .gitignore                              # Исключения Git
├── CMakeLists.txt                          # Конфигурация CMake для приложения
├── LICENSE                                 # Лицензия приложения
├── pubspec.yaml                            # Конфигурация Pub для приложения
└── README.md                               # Документация
```

## Подробное описание функционала

### Основные возможности
- Создание заметок: пользователь может создавать новые заметки, указывая их название, текст и категорию.
- Редактирование заметок: пользователь может редактировать существующие заметки, изменяя их название, текст и категорию.
- Удаление заметок: пользователь может удалять заметки, которые больше не нужны.
- Просмотр заметок: пользователь может просматривать список всех заметок, а также отдельные заметки.
