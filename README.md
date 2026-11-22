# Hotel App — تطبيق نظام فندقي

Hotel management app: users register and log in, browse available rooms, and add new rooms with image, description, price and availability date.

<div dir="rtl">

تطبيق نظام فندقي: إنشاء حساب وتسجيل دخول، عرض الغرف المتاحة، وإضافة غرف جديدة مع الصورة والوصف والسعر وتاريخ الإتاحة.

</div>

## Features

- Sign-up / login with Firebase Auth
- Rooms list loaded from Firestore (`room`)
- Add a new room (image, description, price, date)
- Bottom navigation, Cubit state management

## Tech stack

Flutter, Firebase Auth, Cloud Firestore, flutter_bloc (Cubit), intl

## Project structure

```
lib/
├── cubit/
│   ├── register_cubit.dart
│   └── register_states.dart
├── firebase_options.dart
├── main.dart
├── models/
│   └── room_model.dart
└── screens/
    ├── add_room_screen.dart
    ├── home_screen.dart
    ├── login_screen.dart
    ├── rooms_screen.dart
    └── signup_screen.dart
```

## Getting started

```bash
git clone https://github.com/aesberali-boop/flutter-hotel-app.git
cd flutter-hotel-app
flutter pub get
flutter run -d chrome      # or: flutter run (Android / iOS)
```

The app uses Firebase. The web config lives in [`lib/firebase_options.dart`](lib/firebase_options.dart);
replace it with your own project's config if you fork this repo.


Only the Android, iOS and Web platforms are included. To add desktop support run
`flutter create --platforms=windows,macos,linux .`

## Documentation

- [`docs/presentation.pptx`](docs/presentation.pptx)
- [`docs/report.docx`](docs/report.docx)
- [`docs/report.pdf`](docs/report.pdf)

## License

[MIT](LICENSE)
