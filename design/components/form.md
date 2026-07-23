# Form Component Specification

## Overview
Form components provide consistent styling and behavior for all user input elements. The system includes text inputs, selects, checkboxes, radio buttons, textareas, and validation states.

## Input Fields

### Text Input
```html
<div class="field">
  <label class="field-label" for="email">Email Address</label>
  <input 
    type="email" 
    id="email" 
    class="input input-md" 
    placeholder="you@example.com"
    required
  >
  <span class="field-help">We'll never share your email</span>
</div>
```

### Input Sizes
| Size | Height | Padding | Font Size |
|------|--------|---------|-----------|
| sm | 32px | 6px 12px | 12px |
| md | 40px | 8px 12px | 14px |
| lg | 48px | 12px 16px | 16px |

## States

### Default State
```css
.input {
  width: 100%;
  padding: 8px 12px;
  font-size: 14px;
  line-height: 1.5;
  color: var(--text-primary);
  background-color: var(--background-base);
  border: 1px solid var(--border-base);
  border-radius: var(--border-radius-sm);
  transition: all 150ms var(--easing-default);
}
```

### Focus State
```css
.input:focus {
  outline: none;
  border-color: var(--primary-base);
  box-shadow: 0 0 0 2px var(--primary-focus-ring);
}
```

### Disabled State
```css
.input:disabled {
  background-color: var(--surface-base);
  border-color: var(--border-base);
  color: var(--text-disabled);
  cursor: not-allowed;
  opacity: 0.7;
}
```

### Error State
```css
.input.error {
  border-color: var(--error-base);
}

.input.error:focus {
  box-shadow: 0 0 0 2px var(--error-focus-ring);
}

.field.error .field-help {
  color: var(--error-base);
}
```

### Success State
```css
.input.success {
  border-color: var(--success-base);
}

.input.success:focus {
  box-shadow: 0 0 0 2px var(--success-focus-ring);
}
```

### Loading State
```css
.input.loading {
  background-image: url('spinner.svg');
  background-repeat: no-repeat;
  background-position: right 8px center;
  padding-right: 32px;
}
```

### Empty State
```css
.input:placeholder-shown {
  background-color: var(--surface-base);
  border-color: var(--border-base);
}
```

## Validation States

### Valid Input
- **Border**: 1px solid success base (#2D9A4F)
- **Box shadow**: 0 0 0 2px success focus ring
- **Icon**: Checkmark icon (green)

### Invalid Input
- **Border**: 1px solid error base (#9A2A37)
- **Box shadow**: 0 0 0 2px error focus ring
- **Icon**: Error icon (red)
- **Help text**: Error message in red

### Validation Example
```html
<div class="field error">
  <label class="field-label" for="username">Username</label>
  <input type="text" id="username" class="input error" value="invalid_user!">
  <div class="field-help error">
    <svg class="icon icon-error" aria-hidden="true">...</svg>
    Username can only contain letters, numbers, and underscores
  </div>
</div>
```

## Select Component

### Default Select
```html
<div class="field">
  <label class="field-label" for="country">Country</label>
  <select id="country" class="select select-md">
    <option value="">Select a country</option>
    <option value="us">United States</option>
    <option value="uk">United Kingdom</option>
  </select>
</div>
```

### Select States
- **Default**: Standard border, arrow icon
- **Focus**: Primary border + focus ring
- **Disabled**: Reduced opacity, no interaction
- **Error**: Red border + error message
- **Success**: Green border + checkmark

## Checkbox Component

### Structure
```html
<div class="checkbox-field">
  <input type="checkbox" id="terms" class="checkbox" value="accepted">
  <label class="checkbox-label" for="terms">
    I agree to the terms and conditions
  </label>
</div>
```

### States
- **Unchecked**: Empty box
- **Checked**: Filled box with checkmark
- **Indeterminate**: Dash icon
- **Disabled**: Reduced opacity
- **Error**: Red border + error message

## Radio Button Component

### Structure
```html
<fieldset class="radio-group">
  <legend class="radio-group-legend">Choose an option</legend>
  <div class="radio-option">
    <input type="radio" id="option1" name="options" class="radio" value="1">
    <label class="radio-label" for="option1">Option 1</label>
  </div>
  <div class="radio-option">
    <input type="radio" id="option2" name="options" class="radio" value="2">
    <label class="radio-label" for="option2">Option 2</label>
  </div>
</fieldset>
```

## Textarea Component

### Structure
```html
<div class="field">
  <label class="field-label" for="message">Message</label>
  <textarea 
    id="message" 
    class="textarea" 
    rows="4" 
    placeholder="Enter your message..."
  ></textarea>
  <span class="field-help">Max 500 characters</span>
</div>
```

### Resize Options
- **Vertical**: Default (resize-y)
- **Horizontal**: resize-x
- **Both**: resize
- **None**: resize-none

## Field Layout

### Label Positioning
- **Top**: Default (most accessible)
- **Left**: For dense forms (min-width: 120px)
- **Inline**: For compact layouts

### Field Spacing
```css
.field {
  margin-bottom: var(--spacing-md);
}

.field + .field {
  margin-top: var(--spacing-sm);
}
```

## Form Layout Patterns

### Single Column (Mobile)
```css
.form {
  display: flex;
  flex-direction: column;
  gap: var(--spacing-md);
}
```

### Two Column (Desktop)
```css
.form-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: var(--spacing-md);
}
```

### Action Buttons
```html
<div class="form-actions">
  <button class="button button-secondary">Cancel</button>
  <button class="button button-primary">Save</button>
</div>
```

## Accessibility

### ARIA Attributes
```html
<input 
  type="text"
  aria-label="Email address"
  aria-describedby="email-help"
  aria-invalid="false"
  aria-required="true"
>
<span id="email-help" class="field-help">
  Enter a valid email address
</span>
```

### Keyboard Navigation
- **Tab**: Move between fields
- **Enter**: Submit form
- **Escape**: Reset field
- **Space**: Toggle checkboxes/radios

### Error Announcements
```html
<div role="alert" class="error-message" aria-live="polite">
  Please enter a valid email address
</div>
```

## Implementation Guidelines

### Do's
- Always include labels for form fields
- Use proper input types (email, tel, number)
- Provide helpful error messages
- Group related fields with fieldset
- Use consistent field heights

### Don'ts
- Don't remove default focus indicators
- Don't use placeholder as the only label
- Don't make fields too narrow
- Don't disable fields without explanation
- Don't ignore validation feedback