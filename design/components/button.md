# Button Component Specification

## Overview
The button component is the primary interactive element in the design system. It supports multiple variants, sizes, and states to accommodate all use cases.

## Variants

### Primary Button
- **Use case**: Main call-to-action, form submission
- **Background**: Primary base color (#004194)
- **Text**: Primary contrast color (#FFFFFF)
- **Border**: None

### Secondary Button
- **Use case**: Alternative actions, less prominent
- **Background**: Transparent
- **Text**: Primary base color (#004194)
- **Border**: 1px solid primary base color

### Tertiary Button
- **Use case**: Low priority actions, destructive actions
- **Background**: Transparent
- **Text**: Error base color (#9A2A37)
- **Border**: 1px solid error base color

### Ghost Button
- **Use case**: Subtle actions, navigation
- **Background**: Transparent
- **Text**: Text secondary color (#6C757D)
- **Border**: None

### Outline Button
- **Use case**: Form controls, secondary actions
- **Background**: Transparent
- **Text**: Primary base color
- **Border**: 1px solid border base color

## Sizes

### Large (lg)
- **Padding**: 12px 24px
- **Font size**: 16px (body)
- **Height**: 48px

### Medium (md) - Default
- **Padding**: 8px 16px
- **Font size**: 14px (body)
- **Height**: 40px

### Small (sm)
- **Padding**: 6px 12px
- **Font size**: 12px (caption)
- **Height**: 32px

### Icon Only
- **Padding**: 8px (square)
- **Size**: 40px x 40px

## States

### Default State
```css
.button {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 8px;
  padding: 8px 16px;
  font-size: 14px;
  font-weight: 500;
  line-height: 1.5;
  border-radius: 8px;
  border: none;
  cursor: pointer;
  transition: all 150ms cubic-bezier(0.4, 0, 0.2, 1);
  text-decoration: none;
  white-space: nowrap;
}
```

### Hover State
```css
.button:hover:not(:disabled) {
  background-color: var(--primary-dark);
  transform: translateY(-1px);
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}
```

### Focus State
```css
.button:focus-visible {
  outline: none;
  box-shadow: 0 0 0 2px var(--primary-contrast), 0 0 0 4px var(--primary-focus-ring);
}
```

### Pressed/Active State
```css
.button:active:not(:disabled) {
  background-color: var(--primary-dark);
  transform: translateY(0);
  box-shadow: none;
}
```

### Selected State
```css
.button.selected {
  background-color: var(--primary-dark);
  border-color: var(--primary-dark);
}
```

### Disabled State
```css
.button:disabled {
  opacity: 0.5;
  cursor: not-allowed;
  pointer-events: none;
  transform: none;
  box-shadow: none;
}
```

### Loading State
```css
.button.loading {
  position: relative;
  color: transparent;
  pointer-events: none;
}

.button.loading::after {
  content: "";
  position: absolute;
  width: 16px;
  height: 16px;
  border: 2px solid transparent;
  border-top-color: currentColor;
  border-radius: 50%;
  animation: spin 0.6s linear infinite;
}

@keyframes spin {
  to { transform: rotate(360deg); }
}
```

### Error State
```css
.button.error {
  background-color: var(--error-light);
  color: var(--error-base);
  border: 1px solid var(--error-base);
}

.button.error:hover:not(:disabled) {
  background-color: var(--error-base);
  color: var(--error-contrast);
}
```

### Success State
```css
.button.success {
  background-color: var(--success-light);
  color: var(--success-base);
  border: 1px solid var(--success-base);
}
```

### Empty State
```css
.button.empty {
  background-color: var(--surface);
  color: var(--text-secondary);
  border: 1px dashed var(--border-base);
}
```

## Accessibility

### Keyboard Navigation
- **Tab**: Focus the button
- **Enter/Space**: Activate the button
- **Focus indicator**: Visible 4px ring with primary color

### ARIA Attributes
```html
<button 
  type="button"
  aria-label="Descriptive label"
  aria-disabled="false"
  aria-pressed="false"
  aria-busy="false"
>
  Button Text
</button>
```

### Screen Reader Announcements
- Loading state: Announce "Loading, please wait"
- Error state: Announce "Error: [message]"
- Success state: Announce "Success: [message]"

## Implementation

### HTML Structure
```html
<!-- Primary button -->
<button class="button button-primary button-md">
  <span class="button-label">Primary Action</span>
</button>

<!-- With icon -->
<button class="button button-secondary button-md">
  <svg class="button-icon" aria-hidden="true">...</svg>
  <span class="button-label">Secondary</span>
</button>

<!-- Loading state -->
<button class="button button-primary button-md button-loading" disabled>
  <span class="button-label">Processing...</span>
</button>

<!-- Error state -->
<button class="button button-primary button-md button-error">
  <span class="button-label">Retry</span>
</button>
```

### CSS Custom Properties
```css
:root {
  --button-primary-bg: var(--primary-base);
  --button-primary-hover: var(--primary-dark);
  --button-primary-text: var(--primary-contrast);
  --button-secondary-bg: transparent;
  --button-secondary-hover: var(--primary-light);
  --button-secondary-text: var(--primary-base);
  --button-secondary-border: var(--primary-base);
  --button-radius: 8px;
  --button-transition: all 150ms var(--easing-default);
}
```

## Usage Guidelines

### Do's
- Use primary button for the main action on a page
- Use consistent button heights in a group
- Provide clear, actionable labels
- Use loading state for async operations
- Show error state with helpful message

### Don'ts
- Don't use more than one primary button per section
- Don't mix button sizes in a group
- Don't use buttons for navigation (use links)
- Don't disable buttons without explanation
- Don't use button colors inconsistently

## Responsive Behavior

| Breakpoint | Mobile (< 768px) | Tablet (768-1024px) | Desktop (> 1024px) |
|------------|------------------|---------------------|-------------------|
| Button Group | Stack vertically | Stack vertically | Horizontal row |
| Full Width | Yes | No | No |
| Min Width | 100% | Auto | Auto |

## Testing Checklist

- [ ] All states render correctly
- [ ] Focus ring visible on keyboard navigation
- [ ] Disabled state prevents interaction
- [ ] Loading state shows spinner
- [ ] Error/success states show correct colors
- [ ] Touch targets meet 44x44px minimum
- [ ] Color contrast meets WCAG AA
- [ ] ARIA attributes present and correct