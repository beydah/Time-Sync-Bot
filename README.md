# Time Sync Bot

<div style="text-align:center;">
    <h1>🕒 Windows Time Synchronization Tool</h1>
    <p>Keep your Windows system time in perfect sync automatically</p>
</div>

## 📋 Overview
Time Sync Bot is a lightweight Windows utility that automatically synchronizes your system time with an internet time server at regular intervals. It runs in the background and ensures your computer's clock remains accurate.

## ✨ Features
- Automatically syncs system time with internet time servers
- Runs in the background with minimal resource usage
- No installation required - just download and run
- Simple and lightweight (single batch file)
- Adjustable sync interval (default: 2 minutes)

## 🚀 How It Works
The bot uses the built-in Windows Time Service (`w32tm`) to synchronize your system time. It runs in a loop, syncing the time and then waiting for a specified interval before syncing again.

## 📥 Download & Installation
1. Click the "Code" button and select "Download ZIP"
2. Extract the ZIP file to your preferred location
3. Navigate to the `src` folder
4. Double-click `time_sync_bot.bat` to run the bot

## ⚙️ Usage
Simply run the `time_sync_bot.bat` file. A command prompt window will open showing the sync status.

To run it at startup:
1. Press `Win + R`, type `shell:startup` and press Enter
2. Create a shortcut to `time_sync_bot.bat` in the Startup folder

## ⚠️ Requirements
- Windows operating system
- Internet connection for time synchronization
- Administrator privileges (for time synchronization)

## 🔄 Customization
You can modify the sync interval by editing the `timeout /t 125` line in the batch file. The number represents seconds (125 seconds = ~2 minutes).

## 📜 License
This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing
Contributions are welcome! Feel free to submit issues and pull requests.

## 📬 Contact
For support or questions, please open an issue on the GitHub repository.

---
<div style="text-align: center;">
    <p>Made with ❤️ for accurate timekeeping</p>
</div>
