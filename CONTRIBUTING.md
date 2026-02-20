# 🤝 Contributing to Time Sync Bot

First off, thank you for considering contributing to **Time Sync Bot**! It's people like you that make the open-source community such an amazing place to learn, inspire, and create.

## 📚 Table of Contents
- [Getting Started](#-getting-started)
- [Development Process](#-development-process)
- [Coding Standards](#-coding-standards-important)
- [Pull Request Process](#-pull-request-process)
- [Reporting Bugs](#-reporting-bugs)

---

## 🚀 Getting Started

1.  **Fork** the repository on GitHub.
2.  **Clone** your fork locally:
    ```bash
    git clone https://github.com/beydah/Time-Sync-Bot.git
    cd Time-Sync-Bot
    ```
3.  **Create a Branch** for your feature or fix:
    ```bash
    git checkout -b feature/amazing-feature
    ```

## 🛠️ Development Process

The core logic lies in `src/time_sync.ps1`. You can test your changes by running the script locally.

> **Note**: You must run your terminal or the script as **Administrator** to test the actual time synchronization functionality.

## 📏 Coding Standards (IMPORTANT)

To maintain consistency, this project enforces **strict naming conventions**. Please ensure your code adheres to the following rules before submitting a PR:

| Type                 | Format         | Example                                    |
| :------------------- | :------------- | :----------------------------------------- |
| **Functions**        | `F_Snake_Case` | `function F_Check_Admin { ... }`           |
| **Classes**          | `C_Snake_Case` | `class C_Custom_Type { ... }`              |
| **Constants**        | `SNAKE_CASE`   | `$INTERVAL_SECONDS = 120`                  |
| **Global Variables** | `Snake_Case`   | `$Global_Counter = 0`                      |
| **Local Variables**  | `snake_case`   | `$current_time = Get-Date`                 |
| **Parameters**       | `p_snake_case` | `param([string]$p_message)`                |
| **Regions**          | Required       | Use `#region Header`, `#region Main`, etc. |

### Code Style
*   Use **4 spaces** for indentation.
*   Keep functions small and focused on a single task.
*   Add comments for complex logic.
*   **Header Section**: All scripts must have a standard header region describing the file.

## 📥 Pull Request Process

1.  **Update Documentation**: If you changed functionality, update `README.md`.
2.  **Verify**: Run the script and ensure it passes the Admin check and syncs time correctly.
3.  **Clean Up**: Remove any debug `Write-Host` statements you added (unless they use the standard `F_Write_Log`).
4.  **Submit**: Open a Pull Request to the `main` branch. Provide a clear title and description of your changes.

## 🐛 Reporting Bugs

If you find a bug, please create a GitHub Issue with:
*   **Description**: What happened?
*   **Steps to Reproduce**: How can we see it too?
*   **Expected Behavior**: What should have happened?
*   **Screenshots/Logs**: Any red error text or screenshots.
*   **Environment**: Windows version, PowerShell version.

---

Thank you for helping make **Time Sync Bot** better! 🚀
