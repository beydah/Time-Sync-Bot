# 🛡️ Security Policy

## Supported Versions

We are committed to ensuring the security and reliability of **Time Sync Bot**. The following table outlines the support status for different versions:

| Version   | Status          | Security Updates                       |
| :-------- | :-------------- | :------------------------------------- |
| **1.1.x** | **✅ Supported** | Critical security patches & bug fixes. |
| < 1.1.x   | ❌ EOL           | No longer supported. Please upgrade.   |

## 🐛 Reporting a Vulnerability

We take security issues seriously. If you discover a vulnerability in this project, please follow these steps:

1.  **Do NOT create a public issue** for serious security vulnerabilities (e.g., privilege escalation exploits).
2.  Instead, please disclose the issue responsibly by sending an email to the developer or opening a **Draft Security Advisory** on GitHub if enabled.
    *   If no private channel is available, please open a GitHub Issue with the tag `security` and provide a minimal description without revealing exploit details until contacted.

## 🔐 Security Best Practices for Users

### Administrator Privileges
**Time Sync Bot** requires **Administrator privileges** to function because it modifies the system time, which is a protected Windows setting.

*   ⚠️ **Always download source code from the official repository.**
*   ⚠️ **Review the `src/time_sync.ps1` script** before running it if you have concerns. The code is open source and transparent.
*   ⚠️ **Do not run** modified versions of this script from untrusted sources.

## ⚠️ Known Risks

*   **System Time Modification**: Incorrect usage or malicious modification of the script could lead to incorrect system time, potentially affecting other applications (e.g., SSL certificates, authentication tokens).
*   **Execution Policy**: The provided `run.bat` bypasses the PowerShell execution policy for the script scope only. This is standard for portable tools but should be known.
