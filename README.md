  # 📝 ToDoList

A minimalist and modern task manager built with **SwiftUI** and **SwiftData**, designed to help you stay organized and productive.

---

## 🔧 Technologies Used

[![Swift](https://img.shields.io/badge/Swift-FA7343?logo=swift&logoColor=white)](https://developer.apple.com/swift/)  
[![SwiftUI](https://img.shields.io/badge/SwiftUI-0D1117?logo=swift&logoColor=blue)](https://developer.apple.com/xcode/swiftui/)  
[![SwiftData](https://img.shields.io/badge/SwiftData-0D1117?logo=apple&logoColor=purple)](https://developer.apple.com/documentation/swiftdata)  
[![Git](https://img.shields.io/badge/Git-F05032?logo=git&logoColor=white)](https://git-scm.com/)

---

## ✨ Features

- ✅ Add, edit, and delete tasks  
- 📅 Tasks sorted by creation date  
- 🧠 Built using modern Apple frameworks (SwiftUI + SwiftData)  
- 💾 Local data persistence  

---

## 📸 Screenshots 

<img width="1288" height="866" alt="Captura de pantalla 2025-07-14 a la(s) 3 27 05 p m" src="https://github.com/user-attachments/assets/03dcfda9-8927-4926-b549-e7ffe8a317ef" />

---

## 📦 SwiftData Example

Here’s a simplified SwiftData model and usage example inspired by [Apple's documentation](https://developer.apple.com/documentation/swiftdata):

### Task Model

```swift
import SwiftData

@Model
final class TaskItem {
    var title: String
    var isCompleted: Bool
    var createdAt: Date

    init(title: String, isCompleted: Bool = false, createdAt: Date = .now) {
        self.title = title
        self.isCompleted = isCompleted
        self.createdAt = createdAt
    }
}

```
---

## 📚 Resources

- [📘 Swift Documentation](https://developer.apple.com/documentation/swift)  
- [📗 SwiftUI Documentation](https://developer.apple.com/documentation/swiftui)  
- [📙 SwiftData Documentation](https://developer.apple.com/documentation/swiftdata)
