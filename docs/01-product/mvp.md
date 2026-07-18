# MVP Definition

## Goal

Build the most trustworthy and effortless open-source password manager.

The first version should solve the core problem extremely well before expanding into broader digital identity management.

---

## Core Features

### Credential Vault

- Store credentials securely.
- Organize with folders/tags.
- Search quickly.

---

### Browser Extension

- Save new credentials.
- Autofill credentials.
- Suggest strong passwords.

---

### Password Generator

- Strong password generation.
- Configurable rules.

---

### Password Health

- Weak passwords.
- Reused passwords.
- Compromised passwords.

---

### Automatic Password Update

When a password is changed on a website, Atlas should make updating the stored credential as seamless as possible.

Status: Research

---

### Cross Platform Sync

- Desktop
- Browser
- Mobile (Future)

---

## Out of Scope

Not included in MVP:

- AI Assistant
- Identity Graph
- Secure File Storage
- Team Collaboration
- Enterprise Features

---

---

# Atlas MVP Definition

Version: 1.0 Status: Draft

---

# Goal

Build an open-source, privacy-first password manager that is effortless to use, trustworthy by design, and helps users stay secure without overwhelming them.

The MVP should focus on solving everyday credential management exceptionally well rather than trying to become an all-in-one security platform.

---

# Success Criteria

The MVP is successful if users can:

- Store credentials securely.
- Access credentials from anywhere.
- Autofill reliably.
- Generate strong passwords.
- Understand their password health.
- Update credentials with minimal friction.
- Trust Atlas enough to use it as their primary password manager.

---

# Target Audience

Primary users:

- Students
- Developers
- Freelancers
- Privacy-conscious users
- Individuals looking for a modern, open-source alternative

---

# Core Features

## 1. Secure Credential Vault

Users can securely store:

- Login credentials
- Secure notes
- Credit/Debit cards
- Identity information
- Wi-Fi passwords
- API Keys
- SSH Keys
- Software licenses

Features:

- Search
- Tags
- Folders
- Favorites
- Archive
- Trash

Priority: Must Have

---

## 2. Authentication

- Create account
- Login
- Multi-device sync
- Biometric unlock (where supported)
- Two-Factor Authentication

Priority: Must Have

---

## 3. Browser Extension

- Save new credentials
- Autofill usernames/passwords
- Suggest strong passwords
- Detect existing credentials
- Quick search

Priority: Must Have

---

## 4. Password Generator

- Adjustable length
- Symbols
- Numbers
- Passphrases
- Copy with one click

Priority: Must Have

---

## 5. Password Health

Show:

- Weak passwords
- Reused passwords
- Compromised passwords
- Missing 2FA (future enhancement)

Instead of only reporting issues, provide clear recommendations for improvement.

Priority: Must Have

---

## 6. Import & Export

Import from:

- Bitwarden
- 1Password
- Proton Pass
- Chrome
- Firefox
- CSV

Export:

- Encrypted
- CSV

Priority: Must Have

---

## 7. Automatic Password Update Assistant

Goal:

When users change a password on a website, Atlas should recognize the update and make saving the new credential effortless.

Examples:

- Detect password reset flow.
- Prompt to update the existing credential instead of creating duplicates.
- Minimize manual editing.

Priority: Research / Stretch Goal

---

## 8. Cross Platform

Platforms:

- Web App
- Browser Extension

Future:

- Android
- iOS
- Desktop

Priority: Web First

---

# Non-Functional Requirements

- Open Source
- Privacy First
- No Ads
- End-to-End Encryption
- Fast search
- Responsive UI
- Accessible
- Keyboard friendly
- Offline support (where practical)

---

# Out of Scope

The MVP will NOT include:

- AI Assistant
- Team collaboration
- Organization management
- Secure file storage
- Identity graph
- Dark web monitoring
- Email service
- VPN
- Authenticator app
- Enterprise features

These may be explored after the MVP validates the core product.

---

# MVP Principles

Every feature must:

- Reduce friction.
- Increase trust.
- Respect user privacy.
- Be simple enough for non-technical users.
- Solve a real user problem.

If a feature does not satisfy these principles, it should not be part of Version 1.0.


---
## Authentication Method Detection

Goal:

Help users remember **how** they authenticate to each service, not just their password.

Examples:

- Password
- Google Sign-In
- Apple Sign-In
- GitHub OAuth
- Microsoft Account
- Passkey

Where technically possible, Atlas should detect the authentication method during sign-in and offer to save it alongside the credential.

Priority: High (Post-MVP Candidate)
Status: Research