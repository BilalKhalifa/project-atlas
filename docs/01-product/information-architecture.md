# Information Architecture

Version: 1.0

---

# Goal

Create a navigation structure that is simple, scalable, and intuitive.

Users should be able to find any information within a few clicks while maintaining a clean, uncluttered interface.

---

# Application Structure

Atlas

├── Dashboard

├── Vault

├── Security

├── Browser Extension

├── Import & Export

├── Settings

└── Account

---

# 1. Dashboard

Purpose:

Provide an overview of the user's digital security.

Contains:

- Welcome section

- Security Score

- Password Health Summary

- Recent Activity

- Recently Added Credentials

- Quick Actions

Quick Actions:

- Add Credential

- Generate Password

- Import Data

- Search Vault

---

# 2. Vault

Purpose:

Store and organize every type of sensitive information.

Categories:

- All Items

- Logins

- Passkeys

- Secure Notes

- Payment Cards

- Identities

- API Keys

- SSH Keys

- Software Licenses

- Wi-Fi Credentials

- Archived

- Trash

Each Item Contains:

- Name

- Username / Email

- Password

- Login Method

- Identity Provider

- Website

- Notes

- Tags

- Attachments (Future)

- Created Date

- Updated Date

---

# Login Methods

Supported:

- Password

- Google

- Apple

- Microsoft

- GitHub

- Passkey

- Magic Link

- Other OAuth Providers

This information should be stored whenever technically possible.

---

# 3. Security

Purpose:

Help users improve their security rather than simply reporting issues.

Sections:

- Password Health

- Reused Passwords

- Weak Passwords

- Breached Passwords

- Missing MFA (Future)

- Security Recommendations

Future:

- Guided Security Fixes

- Identity Timeline

- Digital Identity Insights

---

# 4. Browser Extension

Capabilities:

- Autofill

- Save Credential

- Update Credential

- Password Generator

- Quick Search

- Authentication Method Detection (Research)

---

# 5. Import & Export

Import From:

- Bitwarden

- 1Password

- Proton Pass

- Chrome

- Firefox

- CSV

Export:

- Encrypted Backup

- CSV

---

# 6. Settings

General

Appearance

Security

Synchronization

Notifications

Keyboard Shortcuts

Experimental Features

About

---

# 7. Account

Profile

Devices

Sessions

Recovery

Two-Factor Authentication

Account Security

Delete Account

---

# Global Search

Users should be able to search:

- Website

- Username

- Email

- Tags

- Notes

- Login Method

Search should be available from anywhere in the application.

---

# Global Actions

Accessible from every page:

- Search

- Add New Item

- Generate Password

- Lock Vault

- Sync

---

# Future Expansion

The architecture should support future modules without major redesign.

Potential additions:

- Authenticator

- Shared Vaults

- Emergency Access

- Secure File Storage

- Identity Graph

- Security Assistant