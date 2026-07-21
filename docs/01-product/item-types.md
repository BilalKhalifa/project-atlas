# Item Types

Version: 1.0

Status: Draft

Last Updated: 2026-07-21

---

# Purpose

This document defines every item type supported by the Atlas Vault.

Each item type represents a different category of sensitive information that users may securely store.

This document specifies:

- Purpose

- Required fields

- Optional fields

- Default actions

- Validation guidelines

- Future enhancements

Implementation details such as database schema or API design are intentionally excluded.

---

# Design Principles

Every item type should:

- Follow a consistent interaction model.

- Share common metadata.

- Support search.

- Support favorites.

- Support tags.

- Be encrypted by default.

- Remain extensible for future features.

---

# Shared Metadata

All vault items contain the following metadata.

| Field | Required | Description |

|--------|----------|-------------|

| ID | Yes | Unique identifier |

| Title | Yes | Human-readable name |

| Category | Yes | Item type |

| Favorite | No | Quick access flag |

| Tags | No | User-defined organization |

| Notes | No | Additional information |

| Created At | Yes | Creation timestamp |

| Updated At | Yes | Last modification timestamp |

| Last Used | No | Most recent access time |

---

# Login

## Purpose

Stores credentials used to access websites, applications, and online services.

### Required Fields

- Title

- Website

- Username or Email

- Password

### Optional Fields

- Login URL

- Notes

- Tags

- TOTP Secret

- Recovery Codes

- Custom Fields

### Default Actions

- Copy Username

- Copy Password

- Open Website

- Edit

- Favorite

- Archive

- Delete

### Future

- Login Intelligence

- Passkey Association

- Password History

- Login Activity

---

# Passkey

## Purpose

Represents a passkey associated with an online account.

### Required Fields

- Title

- Website

### Optional Fields

- Device Information

- Identity Provider

- Notes

### Default Actions

- View Details

- Edit

- Delete

---

# Secure Note

## Purpose

Stores encrypted text information.

### Required Fields

- Title

- Content

### Optional Fields

- Tags

- Favorite

### Default Actions

- View

- Edit

- Copy

- Delete

---

# Payment Card

## Purpose

Stores payment card information.

### Required Fields

- Cardholder Name

- Card Number

- Expiration Date

### Optional Fields

- CVV

- Billing Address

- Bank Name

- Notes

### Default Actions

- Copy Number

- Copy CVV

- Edit

- Delete

---

# Identity

## Purpose

Stores personal identity information for form filling.

### Required Fields

- Full Name

### Optional Fields

- Date of Birth

- Email

- Phone Number

- Address

- Passport

- Driver License

- National ID

- Company

- Job Title

### Default Actions

- Copy Field

- Edit

- Delete

---

# API Key

## Purpose

Stores API credentials securely.

### Required Fields

- Service Name

- API Key

### Optional Fields

- Endpoint

- Description

- Environment

- Expiration Date

### Default Actions

- Copy Key

- Edit

- Delete

---

# SSH Key

## Purpose

Stores SSH credentials.

### Required Fields

- Title

- Private Key

### Optional Fields

- Public Key

- Fingerprint

- Host

- Username

### Default Actions

- Copy Public Key

- Copy Private Key

- Edit

- Delete

---

# Software License

## Purpose

Stores software licenses and activation keys.

### Required Fields

- Product Name

- License Key

### Optional Fields

- Vendor

- Purchase Date

- Expiration Date

- Download URL

### Default Actions

- Copy License

- Edit

- Delete

---

# Wi-Fi Network

## Purpose

Stores Wi-Fi credentials.

### Required Fields

- Network Name (SSID)

- Password

### Optional Fields

- Security Type

- Router IP

- Notes

### Default Actions

- Copy Password

- Edit

- Delete

---

# Attachment (Future)

## Purpose

Securely stores encrypted files.

### Examples

- Passport Scan

- Certificates

- Recovery PDFs

- Contracts

Not included in MVP.

---

# Validation Principles

Every item should:

- Validate required fields.

- Preserve user-entered formatting where appropriate.

- Prevent accidental data loss.

- Support undo when possible.

Validation should guide users rather than block them unnecessarily.

---

# Search Support

Every item type should be searchable.

Search should include:

- Title

- Tags

- Notes

- Relevant metadata

Sensitive values such as passwords, private keys, and CVVs should never be indexed in plaintext.

---

# Import & Export

Each item type should support import and export where applicable.

Importers should map external fields to Atlas fields whenever possible.

Unknown fields should be preserved when feasible.

---

# Future Item Types

Potential additions include:

- Bank Accounts

- Crypto Wallets

- Database Credentials

- Server Credentials

- Medical Records

- Membership Cards

- Digital Certificates

- Secure Files

Future additions should integrate with the existing item model without changing core vault interactions.

---

# Related Documents

- [features.md](http://features.md)

- [information-architecture.md](http://information-architecture.md)

- ../04-experience/[vault.md](http://vault.md)

- ../04-experience/[search.md](http://search.md)

- ../04-experience/[security.md](http://security.md)