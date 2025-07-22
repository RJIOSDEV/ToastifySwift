

# ToastifySwift

Elegant SwiftUI library for customizable **Toast Notifications** and **Custom Alerts**  
Works across iOS, macOS, watchOS, tvOS — and ready for the future (VisionOS, etc.)

---

## 📸 Demo

![ToastifySwift Demo](https://github.com/user-attachments/assets/e43df967-b496-4248-8005-9e4b5f842acc)

---

## ✨ Features

- ✅ Show toasts with message, icon, color, and auto-dismiss timer
- ✅ Custom alerts with two buttons (e.g., Yes/No, Continue/Cancel)
- ✅ Fully customizable appearance (colors, duration, background)
- ✅ Designed for reusability — use in any SwiftUI project
- ✅ Cross-platform ready (iOS, macOS, watchOS, tvOS)

---

## 📦 Installation (Swift Package Manager)

Add this URL to Xcode: https://github.com/RJIOSDEV/ToastifySwift

Or in `Package.swift`:

```swift
.package(url: "https://github.com/RJIOSDEV/ToastifySwift", from: "1.0.0")

##

Or COCOAPODS
pod 'ToastifySwift', '~> 1.0.3'


---


## 🧑‍💻 Usage

### Show a Toast

```swift
@StateObject var toastManager = ToastManager()

.toastify(using: toastManager)

toastManager.show(toast: ToastModel(
    message: "Saved successfully!",
    icon: "checkmark.circle.fill",
    backgroundColor: .green,
    duration: 2.5
))

.customAlert(
    isPresented: $showStandardAlert,
    title: "Standard Alert",
    message: "This is a standard alert.",
    primary: AlertActionButton(title: "OK", background: .blue) {
        // Your action
    },
    secondary: AlertActionButton(title: "Cancel", background: .gray) {
        // Your action
    },
    style: .normal // Only .normal remains
)


---

## 📚 Documentation

### ToastManager

A shared `ObservableObject` that triggers toast messages globally.

```swift
@StateObject var toastManager = ToastManager()

