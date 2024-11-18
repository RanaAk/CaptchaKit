
---

# 🎉 CaptchaKit 🛡️

[![Platform](https://img.shields.io/badge/platform-iOS-blue)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/swift-5.0-orange)](https://swift.org/)
[![Version](https://img.shields.io/badge/version-1.0.0-green)](https://github.com/RanaAk/CaptchaKit/releases)
[![License](https://img.shields.io/badge/license-MIT-lightgrey)](LICENSE)

**CaptchaKit** is a simple, lightweight library that allows you to add Captcha functionality to your iOS apps. This library helps generate a Captcha—a combination of text and images that users must validate. It's perfect for enhancing app security while maintaining an easy user experience.

---

## ✨ Features

- 🖼️ Generates an Image + Text Captcha.
- 🔄 Refresh the Captcha with one tap.
- ✅ Validate user input easily.
- 📦 Fully compatible with **Swift Package Manager**.
- 🚀 Designed for **iOS 14 and above**.

---

## 📲 Installation

### Swift Package Manager

You can easily add **CaptchaKit** to your project using Xcode's Swift Package Manager.

1. Open your Xcode project.
2. Go to `File` → `Add Package Dependencies...` (See the screenshot below 👇).
 ![Add Package Dependencies](https://github.com/RanaAk/CaptchaKit/blob/main/Images/AddPackage.png)

3.Paste the following URL in the search bar:
```
https://github.com/RanaAk/CaptchaKit.git
```
4. Paste the following URL in the search bar:
   ```
   https://github.com/RanaAk/CaptchaKit.git
   ```
5. Select the main branch or desired version, then click `Add Package`.

![Add Package Dependencies](https://github.com/RanaAk/CaptchaKit/blob/main/Images/HowToAddPackage.png) <!-- Make sure this link points to your GitHub screenshot -->

---
## 📸 How to Add a Captcha in Xcode

1. Follow the steps to add the package dependency (as shown in the installation section).
2. Import `Captcha` into your Swift file.
3. Add the `CaptchaView` to your SwiftUI layout.

 <!-- Ensure you upload and reference your screenshots -->


---

## 🚀 Usage

Using **CaptchaKit** in your SwiftUI project is simple. Here's how:

### Import the Library

```swift
import SwiftUI
import Captcha
```

### Add a Captcha to Your View

```swift
struct ContentView: View {
    var body: some View {
        CaptchaView { result in
            print(result) // Handle validation result
        }
    }
}
```
<!-- Replace with your actual screenshot -->

---

## 🛠️ Future Updates

We’re just getting started! In future versions, expect:

- 🌟 Advanced Captcha styles.
- 🌐 Localization support.
- 🔒 More robust security features.

---

## ❤️ Contribute

We welcome contributions! Feel free to submit a pull request or open an issue if you encounter a bug or have a feature request.

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

**CaptchaKit**: Making security simple and elegant. 🚀

--- 
