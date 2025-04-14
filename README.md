---


# 🚀 Campus Complaints & Suggestions Box 📬

> A cross-platform real-time complaints & suggestions management system built with ❤️ using Flutter + SQLite.

---

## 📌 Project Highlights

🎓 Built for students, faculty, and administrators to transparently track and resolve campus issues.

🛠️ Backend-less DBMS powered by **Sqflite** (SQLite) — fast, local, secure.

📱 Deployable to Android (.apk) and Linux (.appImage) effortlessly.

🧑‍💼 Admin Panel with full control over complaints: status tracking, filtering, and action logging.

🧑‍🎓 Student Panel to submit complaints and track resolution status — all with a beautiful UI.

---

## 🔥 Features

|           Feature          | Student | Admin |
|----------------------------|---------|-------|
|      ✍️ Register/Login     |    ✅   | ✅    |
|      📝 Add Complaints     |    ✅   | ❌    |
|      📄 View Complaints    |    ✅   | ✅    |
|       🚦 Track Status      |    ✅   | ✅    |
|    🧾 Filter by Status     |    ❌   | ✅    |
| 🛠️ Change Complaint Status |    ❌   | ✅    |
|     🔒 Secure Local DB     |    ✅   | ✅    |

---

## 🧱 Tech Stack

- 💻 **Flutter** - UI Framework
- 🗃️ **Sqflite** - Local DBMS
- 🧠 **Provider** - State Management
- 🎨 **Material 3 UI** - Clean and modern interface
- 🛠️ **Android NDK 27** - Native compatibility for plugins

---



## 🚧 Project Structure
```
lib/
├── models/
│   └── user_model.dart
├── database/
│   └── db_helper.dart
├── screens/
│   ├── login_screen.dart
│   ├── student_dashboard.dart
│   ├── admin_panel.dart
│   ├── add_complaint.dart
├── widgets/
│   └── complaint_tile.dart
├── constants/
│   └── constants.dart
main.dart
```

---

## 🧪 How to Run

> Make sure Flutter is installed and setup correctly.

```bash
git clone https://github.com/sanjitvk8/campus-complaints.git
cd campus-complaints
flutter pub get
flutter run
```

📦 To build an APK:
```bash
flutter build apk
```

📦 To build for Linux (.appImage):
```bash
flutter build linux
```

---

## 🌟 Future Scope

- 🔔 Push Notifications for complaint updates
- ☁️ Firebase sync for cross-device access
- 📊 Analytics for admin dashboard
- 🌐 Web Support

---

## 💻 Made With

🧠 Brain
☕ Coffee
💙 Flutter
🔥 Passion

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

---

## 📜 License

[MIT](LICENSE)

---

## 🚀 Author

Crafted with 🔥, caffeine, and pure logic by [Sandrioo](https://github.com/sanjitvk8)

---
