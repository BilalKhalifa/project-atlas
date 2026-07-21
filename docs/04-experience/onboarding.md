# Onboarding Experience

Version: 1.0

Status: Draft

Last Updated: 2026-07-21

---

# Purpose

This document defines the onboarding experience for new Atlas users.

The objective is to help users understand Atlas, establish trust, and begin using the product with as little friction as possible.

The onboarding process should educate without overwhelming, encourage exploration without forcing it, and prepare users to use Atlas confidently.

---

# Goals

The onboarding experience should enable users to:

- Create an account.

- Understand how Atlas protects their data.

- Set up their vault.

- Import existing credentials.

- Install the browser extension.

- Save their first credential.

- Successfully reach the dashboard.

---

# Design Principles

The onboarding experience should be:

## Simple

Only ask for information that is immediately necessary.

---

## Educational

Explain important concepts when they matter.

Avoid long tutorials before users interact with the product.

---

## Trustworthy

Clearly communicate:

- What Atlas stores.

- What Atlas cannot access.

- How user data is protected.

Users should understand the security model before storing sensitive information.

---

## Optional

Advanced setup should never block users.

Features such as importing passwords or installing extensions should be recommended but skippable.

---

# User Journey

`

Landing Page

```
  ↓
```

Create Account

```
  ↓
```

Email Verification (if enabled)

```
  ↓
```

Create Master Password

```
  ↓
```

Welcome

```
  ↓
```

Security Introduction

```
  ↓
```

Import Passwords (Optional)

```
  ↓
```

Install Browser Extension (Optional)

```
  ↓
```

Save First Credential

```
  ↓
```

Dashboard

`

---

# Step 1 — Account Creation

## Objective

Create an Atlas account.

Required information should be minimal.

Possible fields:

- Email

- Password

Alternative authentication methods may be added in future versions.

---

# Step 2 — Email Verification

If email verification is enabled:

`

Create Account

```
  ↓
```

Verification Email

```
  ↓
```

Verify

```
  ↓
```

Continue

`

Users should always be able to resend the verification email.

---

# Step 3 — Master Password

## Objective

Create a strong master password.

The interface should explain:

- This password encrypts the vault.

- Atlas cannot recover it.

- It should be memorable and unique.

Users should receive real-time feedback about password strength.

---

# Step 4 — Welcome

Instead of displaying a generic success page, Atlas should reassure users.

Example:

&gt; Welcome to Atlas.

&gt;

&gt; Your encrypted vault is ready.

The interface should feel calm rather than celebratory.

---

# Step 5 — Security Introduction

Before asking users to store passwords, briefly explain:

- End-to-end encryption.

- Zero-knowledge architecture.

- Local encryption before synchronization.

- Open-source transparency.

This explanation should remain concise and avoid technical jargon.

---

# Step 6 — Import Existing Passwords

Users should be able to import credentials from supported password managers.

Supported providers may include:

- Bitwarden

- 1Password

- Dashlane

- LastPass

- Chrome

- Firefox

- Edge

Users should always preview imported data before confirming the import.

Importing should be optional.

---

# Step 7 — Browser Extension

Atlas should recommend installing the browser extension.

Benefits should be clearly communicated:

- Autofill

- Password saving

- Password generation

- Quick access

Installation should never interrupt onboarding.

Users may continue without the extension.

---

# Step 8 — Save First Credential

Encourage users to create or save their first credential.

This establishes the primary workflow immediately.

Examples include:

- Add manually.

- Import a single login.

- Save a newly created account.

---

# Step 9 — Dashboard

The dashboard becomes the user's home.

New users should see guidance rather than an empty interface.

Possible suggestions include:

- Generate a secure password.

- Import additional credentials.

- Review password health.

- Explore keyboard shortcuts.

---

# Empty States

Every onboarding step should provide meaningful guidance when no data exists.

Avoid messages such as:

"No data."

Instead prefer:

&gt; Your vault is ready.

&gt;

&gt; Save your first credential or import existing passwords to get started.

---

# Error Handling

Onboarding should recover gracefully from failures.

Examples include:

- Network interruption

- Verification failure

- Import failure

- Weak master password

- Browser extension installation failure

Users should always know:

- What happened.

- Why it happened.

- How to continue.

---

# Accessibility

The onboarding experience should support:

- Keyboard navigation

- Screen readers

- High contrast mode

- Reduced motion preferences

- Responsive layouts

---

# Success Criteria

A successful onboarding session results in:

- Account created.

- Vault initialized.

- Master password configured.

- At least one credential stored or imported.

- User understands Atlas's security model.

- User reaches the dashboard with confidence.

---

# Future Enhancements

Potential future improvements include:

- Interactive product tour

- Personalized onboarding based on user goals

- Passkey-first onboarding

- Multi-device setup guidance

- Security health introduction

- Identity setup

---

# Related Documents

- [user-flows.md](http://user-flows.md)

- [authentication.md](http://authentication.md)

- [vault.md](http://vault.md)

- [security.md](http://security.md)

- ../03-design/[design-language.md](http://design-language.md)

- ../03-design/[accessibility.md](http://accessibility.md)
