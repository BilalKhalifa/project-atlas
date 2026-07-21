# Vault Experience

Version: 1.0

Status: Draft

Last Updated: 2026-07-21

---

# Purpose

This document defines the experience of interacting with the Atlas Vault.

The vault is the central workspace of Atlas. It provides a secure, organized, and intuitive environment for managing sensitive information while minimizing friction and maintaining user trust.

This document describes how users browse, organize, create, edit, and manage items stored in their vault.

---

# Goals

The vault should be:

- Secure

- Fast

- Easy to understand

- Consistent

- Scalable

- Keyboard friendly

Users should be able to locate, edit, or create any item with minimal effort.

---

# Vault Philosophy

The vault is more than a password database.

It is a secure digital home for the user's online identity.

Atlas should help users manage everything required to access their digital life while keeping the experience calm and uncluttered.

---

# Vault Structure

The vault contains multiple item types.

\`

Vault

│

├── All Items

├── Logins

├── Passkeys

├── Secure Notes

├── Payment Cards

├── Identities

├── API Keys

├── SSH Keys

├── Software Licenses

├── Wi-Fi Passwords

├── Archive

└── Trash

\`

Future item types may be added without changing the overall navigation model.

---

# Item Model

Every vault item follows a consistent structure.

Each item contains:

- Title

- Category

- Icon

- Tags (Optional)

- Favorite Status

- Creation Date

- Last Updated

- Last Used

- Notes (Optional)

Each item type may define additional fields specific to its purpose.

---

# Credential Experience

A login item may include:

- Website

- Username

- Password

- Email Address

- Login Method

- Two-Factor Authentication Status

- Notes

- Custom Fields

Future versions may also include:

- Identity Provider

- Linked Passkey

- Recovery Codes

- Security Questions

- Login History

---

# Vault Home

The default vault view should provide quick access to recently relevant information.

Examples include:

- Recently Used

- Favorites

- Recently Added

- Frequently Accessed

Users should be able to switch to category-based browsing at any time.

---

# Browsing

Users should be able to browse items by:

- Category

- Alphabetical Order

- Recently Updated

- Recently Used

- Favorites

- Tags

Browsing should remain fast regardless of vault size.

---

# Search Integration

Search is the primary method of finding information.

Browsing complements search rather than replacing it.

Every vault screen should provide immediate access to global search.

---

# Creating Items

Users should be able to create new items from:

- Dashboard

- Vault

- Global Search

- Browser Extension

The creation experience should be consistent across all entry points.

---

# Editing Items

Editing should feel safe and predictable.

Users should:

- Clearly understand which fields are editable.

- See changes immediately.

- Save with confidence.

- Cancel without losing existing data.

Unsaved changes should never disappear silently.

---

# Viewing Sensitive Information

Sensitive information should remain hidden until intentionally revealed.

Examples include:

- Passwords

- Recovery Codes

- Secret Keys

- API Tokens

Visibility controls should be obvious and reversible.

---

# Copying Information

Users should be able to copy individual fields.

Examples include:

- Username

- Password

- Email

- API Key

Every copy action should provide immediate feedback.

Future versions may automatically clear copied sensitive information from the clipboard after a configurable time.

---

# Opening Websites

Login items should allow users to open associated websites directly.

Atlas should never automatically submit credentials.

Autofill remains the responsibility of the browser extension.

---

# Organizing Items

Atlas should support lightweight organization.

Users may organize items using:

- Favorites

- Tags

- Categories

Folders are intentionally excluded from the MVP to reduce complexity.

Future versions may revisit this decision if user research indicates demand.

---

# Favorites

Favorites provide quick access to frequently used items.

Favoriting an item should never change its original category.

Favorites represent shortcuts, not duplicates.

---

# Archive

Archive stores items that users no longer use regularly but do not wish to delete.

Archived items:

- Remain searchable.

- Are excluded from default browsing.

- Can be restored at any time.

---

# Trash

Deleting an item moves it to Trash.

Items remain recoverable until the configured retention period expires.

Permanent deletion should require explicit user confirmation.

---

# Bulk Actions

Atlas should support bulk operations where appropriate.

Examples include:

- Delete

- Archive

- Restore

- Export

- Apply Tags

Bulk actions should clearly display the number of selected items before execution.

---

# Empty States

Every vault section should provide helpful guidance.

Examples:

Logins

&gt; No logins yet.

&gt;

&gt; Save your first credential or import existing passwords.

Secure Notes

&gt; Keep sensitive information encrypted and easy to find.

Trash

&gt; Deleted items will appear here until they are permanently removed.

---

# Item Actions

Every item should provide a consistent set of actions where applicable.

Examples include:

- View

- Edit

- Copy

- Favorite

- Archive

- Delete

- Open Website

- Share (Future)

Actions should appear in predictable locations throughout the application.

---

# Keyboard Experience

The vault should support efficient keyboard navigation.

Examples include:

- Arrow Keys

- Enter

- Escape

- Delete

- Ctrl/Cmd + K

- Ctrl/Cmd + N

Users should never be required to use a mouse for primary workflows.

---

# Performance Goals

The vault should remain responsive regardless of vault size.

Target experience:

- Instant navigation

- Smooth scrolling

- Immediate search results

- Fast item opening

- Minimal loading states

Performance should prioritize perceived responsiveness as much as raw speed.

---

# Accessibility

The vault should support:

- Screen readers

- Keyboard navigation

- High contrast themes

- Reduced motion

- Responsive layouts

Sensitive actions should never rely solely on visual indicators.

---

# Future Enhancements

Future versions may include:

- Login Intelligence

- Linked Accounts

- Identity Relationships

- Smart Collections

- Custom Categories

- Secure Attachments

- Version History

- Item Activity Timeline

- Shared Vaults

- Team Workspaces

These features should extend the vault without changing its core interaction model.

---

# Related Documents

- [user-flows.md](http://user-flows.md)

- [authentication.md](http://authentication.md)

- [search.md](http://search.md)

- [security.md](http://security.md)

- [settings.md](http://settings.md)

- ../01-product/[features.md](http://features.md)

- ../01-product/[information-architecture.md](http://information-architecture.md)

- ../03-design/[design-language.md](http://design-language.md)

- ../03-design/[design-system.md](http://design-system.md)