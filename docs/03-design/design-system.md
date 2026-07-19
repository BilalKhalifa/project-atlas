# Atlas Design System

Version: 1.0

---

# Purpose

The Atlas Design System provides a consistent foundation for designing and building every interface.

It defines reusable design tokens, components, patterns, and interaction behaviors that create a cohesive user experience.

Every screen should feel like it belongs to the same product.

---

# Design Principles

Every component should embody Atlas's four design pillars:

- Clarity
- Confidence
- Efficiency
- Delight

---

# Design Tokens

## Color

Colors communicate meaning.

They should never be chosen arbitrarily.

### Palette Structure

- Primary
- Neutral
- Success
- Warning
- Error
- Info

Neutrals should dominate the interface.

Accent colors should guide attention—not decorate.

---

## Typography

Typography creates hierarchy before color does.

### Font Family

Primary:
Inter

Alternative:
Geist

Monospace:
JetBrains Mono

---

### Font Scale

Display

Heading 1

Heading 2

Heading 3

Title

Body Large

Body

Body Small

Caption

Label

---

### Font Weight

Regular

Medium

Semibold

Bold

---

## Spacing

Atlas uses an **8-point spacing system**.

Base Unit:

8px

Examples:

- 4px (micro adjustments)
- 8px
- 16px
- 24px
- 32px
- 40px
- 48px
- 64px

Spacing should feel generous.

Whitespace improves readability.

---

## Border Radius

Small

Medium

Large

Extra Large

Full

Avoid inconsistent rounding.

---

## Shadows

Small

Medium

Large

Overlay

Shadows should communicate elevation, not decoration.

---

## Blur

Used only for overlays.

Examples:

- Command Palette
- Context Menus
- Dialogs

Avoid blur on regular content.

---

# Grid System

Desktop

12-column grid

Tablet

8-column grid

Mobile

4-column grid

---

# Breakpoints

Mobile

Tablet

Laptop

Desktop

Wide

---

# Icons

Library:

Lucide Icons

Guidelines:

- Outline style
- Consistent stroke
- Simple geometry
- Always paired with text when clarity matters

---

# Motion Tokens

Fast

Normal

Slow

Ease

Ease In

Ease Out

Spring

Motion should feel responsive, never sluggish.

---

# Components

---

## Buttons

Variants

- Primary
- Secondary
- Ghost
- Destructive
- Link

States

- Default
- Hover
- Active
- Focus
- Disabled
- Loading

---

## Inputs

Support:

- Label
- Placeholder
- Helper Text
- Error
- Success

Password fields should include:

- Reveal toggle
- Copy button (where appropriate)
- Password strength

---

## Search

Atlas Search is a core component.

Supports:

- Keyboard navigation
- Recent searches
- Quick actions
- Suggestions
- Global search

Shortcut:

Ctrl/Cmd + K

---

## Sidebar

Contains:

- Navigation
- Workspace
- User Profile
- Settings shortcut

Should collapse gracefully.

---

## Cards

Cards group related information.

Avoid unnecessary nesting.

Prefer flat layouts.

---

## Tables

Support:

- Sorting
- Filtering
- Search
- Keyboard navigation

---

## Modals

Used only for focused tasks.

Avoid stacking multiple modals.

---

## Toasts

Duration

3–5 seconds

Placement

Bottom Right (Desktop)

Bottom Center (Mobile)

---

## Dropdowns

Should support:

- Keyboard navigation
- Search (when needed)
- Icons

---

## Tabs

Use only when content belongs to the same context.

Do not use tabs for primary navigation.

---

## Empty States

Must include:

- Explanation
- Illustration (optional)
- Primary Action

---

## Loading States

Prefer skeleton loaders.

Avoid blocking users.

---

## Feedback

Every important action should produce feedback.

Examples:

✓ Password copied

✓ Item saved

✓ Vault locked

✓ Import completed

---

# Accessibility

Minimum touch target:

44 × 44 px

Visible focus states.

Keyboard-first navigation.

Semantic HTML.

ARIA where needed.

WCAG AA contrast.

---

# Responsive Design

Content should adapt naturally.

Avoid separate desktop/mobile designs whenever possible.

---

# Theme Support

Light Theme

Dark Theme

Future:

System Theme

High Contrast Theme

---

# Future Components

- Passkey Manager
- Security Dashboard
- Timeline
- Activity Feed
- Identity Graph
- AI Assistant

These should follow the same design language and token system.

---

# Guiding Rule

When designing a new component, ask:

- Is it clear?
- Is it consistent?
- Is it accessible?
- Does it reduce effort?
- Does it build trust?

If not, redesign it.