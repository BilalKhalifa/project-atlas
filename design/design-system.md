# UI/UX Design System

## Overview

A comprehensive design system built on refined modern SaaS aesthetics with an 8px spacing rhythm system, clear visual hierarchy, and semantic color coding.

## Design Principles

- **Clarity First**: Content prioritization over decorative elements
- **Meaningful Depth**: Glass effects only where they provide genuine context
- **Consistent Rhythm**: 8px spacing system throughout
- **Accessible Interaction**: All states properly defined and navigable

## Core Tokens

### Color System
| Role | Light Mode | Dark Mode |
|------|------------|-----------|
| Primary | #004194 | #4DA6FF |
| Secondary | #2E9196 | #4DDDEB |
| Success | #2D9A4F | #6ED97F |
| Warning | #E38E2E | #F5C76B |
| Error | #9A2A37 | #FF6B6B |
| Background | #FFFFFF | #1A1A1A |
| Surface | #F8F9FA | #252525 |

### Typography Scale

| Level | Font Size | Weight | Line Height | Purpose |
|-------|-----------|--------|-------------|---------|
| Display | 48px | 700 | 1.1 | Page titles |
| Heading 1 | 32px | 600 | 1.2 | Section headers |
| Heading 2 | 24px | 600 | 1.3 | Card headers |
| Body Large | 18px | 500 | 1.5 | Important text |
| Body | 16px | 400 | 1.5 | Default text |
| Caption | 12px | 500 | 1.4 | Supporting info |

### Spacing System (8px Grid)

| Token | Value | Usage |
|-------|-------|-------|
| xs | 4px | Tight spacing |
| sm | 8px | Component padding |
| md | 16px | Section margins |
| lg | 24px | Page padding |
| xl | 32px | Major divisions |

## Component States

Every interactive element must support:
- **Default**: Base state with subtle styling
- **Hover**: Interactive feedback (background change)
- **Focus**: Visible focus ring (2px, #004194)
- **Pressed**: Active state (darkened background)
- **Selected**: Active selection state
- **Disabled**: Reduced opacity (0.5), no interaction
- **Loading**: Spinner + disabled appearance
- **Error**: Red border, error icon
- **Success**: Green border, checkmark icon
- **Empty**: Illustration + helpful message

## Layout Patterns

### Dashboard Layout
- Persistent sidebar (240px wide)
- Top navigation bar
- Main content area with max-width: 1200px
- Card-based information architecture

### Form Layout
- Single-column on mobile
- Two-column on desktop for related fields
- Consistent field spacing (16px between fields)
- Action buttons aligned to right

### Error State
- Centered illustration
- Clear error message
- Single primary action
- Link to help/resources

### Success State
- Checkmark animation
- Brief confirmation message
- Auto-dismiss after 3 seconds
- Option to view details

## Accessibility Standards

- WCAG 2.1 AA compliance
- Minimum 4.5:1 color contrast
- Keyboard navigation support
- Focus management for modals
- ARIA labels for icon-only buttons
- Screen reader announcements for state changes