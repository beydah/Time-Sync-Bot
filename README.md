# 🕒 Time Sync Bot

<div align="center">

![Windows](https://img.shields.io/badge/Platform-Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-5.0%2B-5391FE?style=for-the-badge&logo=powershell&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

**A lightweight, automated utility to keep your Windows system clock in perfect synchronization.**

[Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [Configuration](#-configuration) • [Contributing](#-contributing) • [License](#-license)

</div>

---

## 📋 Overview

**Time Sync Bot** is a "set it and forget it" tool designed for Windows environments where maintaining precise system time is critical. It runs silently in the background, periodically synchronizing your computer's clock with the global Internet Time Servers using the built-in Windows Time Service (`w32tm`).

Unlike the default Windows synchronization which can be unreliable or infrequent, **Time Sync Bot** ensures your clock never drifts, making it perfect for:
*   Trading & Financial Applications
*   Server Environments
*   Gaming & eSports
*   Development & Debugging

## ✨ Features

| Feature              | Description                                                                    |
| :------------------- | :----------------------------------------------------------------------------- |
| **🛡️ Secure & Safe**  | Explicitly checks for **Administrator privileges** to prevent silent failures. |
| **🚀 Zero-Install**   | Portable design. No installers, registry changes, or bloatware.                |
| **🤖 Automated**      | Runs in a continuous loop with a configurable interval (default: 2 minutes).   |
| **👁️ Visible Status** | Provides clear, color-coded console output (Green = OK, Red = Error).          |
| **⚡ Robust Logic**   | Built with modern **PowerShell** for superior error handling and reliability.  |

## 📥 Installation

1.  **Download** the latest version from the repository.
    *   Click the `<> Code` button and select `Download ZIP`.
2.  **Extract** the contents to a folder of your choice (e.g., `C:\Tools\Time-Sync-Bot`).
3.  Navigate to the `src` folder.

## ⚙️ Usage

### Standard Method
1.  Navigate to the `src` directory.
2.  Right-click on **`run.bat`**.
3.  Select **"Run as administrator"**.
4.  A console window will appear and start synchronizing immediately.

> **Note:** Administrator privileges are **required** because changing the system time is a protected action in Windows. The script will warn you if you forget this step.

### Auto-Start with Windows
To have the bot run automatically when you log in:

1.  Press `Win + R`, type `shell:startup`, and hit **Enter**.
2.  Create a **Shortcut** to `src/run.bat` in this folder.
3.  **Important:** Configure the shortcut to always run as Admin:
    *   Right-click the Shortcut > **Properties**.
    *   Click **Advanced...** button.
    *   Check **"Run as administrator"**.
    *   Click **OK** > **OK**.

## 🔧 Configuration

You can customize the synchronization interval by editing the script.

1.  Open `src/time_sync.ps1` with a text editor (Notepad, VS Code, etc.).
2.  Locate the configuration region at the top:
    ```powershell
    #region Configuration
    $INTERVAL_SECONDS = 120  # Change this value (in seconds)
    #endregion
    ```
3.  Change `120` to your desired interval (e.g., `3600` for 1 hour).
4.  Save and restart the bot.

## 🤝 Contributing

Contributions are welcome! If you have ideas for improvements:

1.  Fork the project.
2.  Create your feature branch (`git checkout -b feature/AmazingFeature`).
3.  Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4.  Push to the branch (`git push origin feature/AmazingFeature`).
5.  Open a Pull Request.

## 📜 License

Distributed under the **MIT License**. See [`LICENSE`](LICENSE) for more information.

## 👨‍💻 Developer

Developed by **Ilkay Beydah Saglam**.

---

<div align="center">
    <sub>Made with ❤️ for precision and accuracy.</sub>
</div>
