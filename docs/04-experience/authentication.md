# Authentication Experience

Version: 1.0

Status: Draft

Last Updated: 2026-07-21

---

# Purpose

This document defines the authentication experience for Atlas.

Authentication is more than signing in—it establishes user identity, protects access to encrypted data, and builds trust throughout the product.

This document specifies the expected user experience and security principles, independent of any specific authentication provider.

---

# Goals

Authentication should be:

- Secure

- Simple

- Predictable

- Accessible

- Fast

- Privacy Respecting

Users should always understand:

- Who is signed in.

- Whether their vault is locked or unlocked.

- How to secure their account.

- How to recover from common authentication problems.

---

# Authentication Model

Atlas separates authentication into two distinct layers.

## Account Authentication

Confirms the user's identity.

Examples include:

- Email & Password

- Google

- GitHub

- Apple

- Passkeys (Future)

This grants access to the user's Atlas account.

---

## Vault Authentication

Confirms that the authenticated user is allowed to decrypt and access the encrypted vault.

Examples include:

- Master Password

- Device Authentication

- Biometrics (Future)

Access to the account does not automatically imply access to the vault.

---

# User Authentication Flow

`

Open Atlas

↓

Authenticate Account

↓

Verify Session

↓

Unlock Vault

↓

Dashboard

`

The authentication process should clearly indicate which stage the user is currently completing.

---

# Sign Up

## Objective

Allow users to create an Atlas account with minimal friction.

### Requirements

- Minimal required information

- Password strength validation

- Email verification (if enabled)

- Clear error messages

- Accessible forms

### Success

The user reaches the vault setup experience.

---

# Sign In

Users should be able to authenticate using supported methods.

Current MVP:

- Email & Password

Future:

- Google

- GitHub

- Apple

- Passkeys

The sign-in process should remember trusted devices when appropriate.

---

# Session Management

Atlas should clearly distinguish between:

- Signed In

- Vault Locked

- Vault Unlocked

- Session Expired

Users should always know their current security state.

---

# Vault Unlock

Unlocking the vault is separate from signing in.

Possible unlock methods include:

- Master Password

- Biometrics (Future)

- Device Authentication (Future)

Unlocking should be fast while maintaining strong security.

---

# Vault Lock

The vault may lock when:

- User manually locks it.

- User signs out.

- Device remains inactive.

- Security policy requires it.

Locking should happen immediately and preserve the current application state whenever possible.

---

# Logout

Signing out should:

- End the current session.

- Lock the vault.

- Remove session tokens.

- Return the user to the landing page.

Users should always be able to distinguish between locking the vault and signing out completely.

---

# Forgotten Password

Atlas should provide a secure recovery flow for account authentication.

If recovery affects encrypted vault access, the user should be clearly informed of the consequences.

Recovery should never compromise the security model.

---

# Two-Factor Authentication

Future versions should support:

- Authenticator Apps

- Security Keys

- Passkeys

- Backup Recovery Codes

SMS-based authentication should be avoided unless required.

---

# Trusted Devices

Users may choose to trust a device.

Trusted devices may reduce authentication friction while maintaining vault security.

Users should be able to:

- View trusted devices

- Rename devices

- Remove devices

- Revoke access remotely

---

# Device Sessions

Users should be able to view all active sessions.

Each session should display:

- Device Name

- Browser

- Operating System

- Approximate Location

- Last Active Time

Users should be able to revoke any session.

---

# Security Notifications

Atlas should notify users about important authentication events.

Examples include:

- New device login

- Password changed

- Email updated

- Two-factor authentication enabled

- Suspicious sign-in attempt

Notifications should provide context without creating unnecessary anxiety.

---

# Error Handling

Authentication failures should be informative without exposing sensitive information.

Examples include:

- Invalid credentials

- Expired session

- Network interruption

- Verification expired

- Vault unlock failed

Every error should explain:

- What happened

- Why it happened (when appropriate)

- How to continue

---

# Accessibility

Authentication should support:

- Keyboard navigation

- Screen readers

- Password managers

- Reduced motion

- High contrast themes

---

# Security Principles

Authentication should follow these principles:

- Never expose sensitive information.

- Minimize unnecessary authentication prompts.

- Protect against session hijacking.

- Require confirmation for sensitive account changes.

- Make security visible without overwhelming users.

---

# Future Enhancements

Future authentication improvements may include:

- Passkey-first authentication

- Biometric vault unlock

- Hardware security keys

- Adaptive authentication

- Login Intelligence

- Risk-based authentication

- Multiple accounts

---

# Related Documents

- [onboarding.md](http://onboarding.md)

- [security.md](http://security.md)

- [user-flows.md](http://user-flows.md)

- ../01-product/[features.md](http://features.md)

- ../03-design/[design-language.md](http://design-language.md)

- ../03-design/[accessibility.md](http://accessibility.md)
