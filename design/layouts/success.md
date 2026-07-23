# Success State Layout

## Overview
Success states confirm that an action completed successfully, providing positive feedback to the user.

## Success State Structure

### Toast Notification
```html
<div class="toast toast-success" role="alert" aria-live="polite">
  <div class="toast-icon">
    <svg class="icon icon-success" aria-hidden="true">✓</svg>
  </div>
  <div class="toast-content">
    <h4 class="toast-title">Saved Successfully</h4>
    <p class="toast-message">Your changes have been saved.</p>
  </div>
  <button class="toast-close" aria-label="Dismiss notification">
    <svg class="icon icon-close" aria-hidden="true">×</svg>
  </button>
</div>
```

### Inline Success Message
```html
<div class="success-message" role="status" aria-live="polite">
  <div class="success-icon">
    <svg class="icon icon-success" aria-hidden="true">✓</svg>
  </div>
  <div class="success-content">
    <h4 class="success-title">Account Created</h4>
    <p class="success-description">Welcome to your new account! Please check your email to verify.</p>
  </div>
  <div class="success-actions">
    <button class="button button-primary button-sm">Go to Dashboard</button>
  </div>
</div>
```

### Form Success State
```html
<div class="form-success">
  <div class="success-illustration">
    <svg class="success-checkmark" viewBox="0 0 52 52">
      <circle class="checkmark-circle" cx="26" cy="26" r="25" fill="none" stroke="#2D9A4F" stroke-width="2"/>
      <path class="checkmark" fill="none" stroke="#2D9A4F" stroke-width="3" d="M14 27l8 8 16-16"/>
    </svg>
  </div>
  <h2 class="form-success-title">All Set!</h2>
  <p class="form-success-message">Your profile has been updated successfully.</p>
  <button class="button button-primary button-lg">Continue</button>
</div>
```

### Page- **Background**: White/light gray
- **Border**: 1px solid success base
- **Shadow**: Medium shadow

## Styles

### Toast Styles
```css
.toast {
  display: flex;
  align-items: flex-start;
  gap: var(--spacing-sm);
  padding: var(--spacing-md);
  background-color: var(--background-base);
  border: 1px solid var(--border-base);
  border-radius: var(--border-radius-md);
  box-shadow: var(--shadow-lg);
  max-width: 400px;
  animation: slideIn 300ms var(--easing-decelerate);
}

.toast-success {
  border-left: 4px solid var(--success-base);
}

.toast-icon {
  flex-shrink: 0;
  color: var(--success-base);
  margin-top: 2px;
}

.toast-content {
  flex: 1;
  min-width: 0;
}

.toast-title {
  font-size: var(--font-size-sm);
  font-weight: 600;
  color: var(--text-primary);
  margin: 0 0 var(--spacing-xs) 0;
}

.toast-message {
  font-size: var(--font-size-sm);
  color: var(--text-secondary);
  margin: 0;
  line-height: 1.4;
}

.toast-close {
  flex-shrink: 0;
  padding: var(--spacing-xs);
  color: var(--text-secondary);
  background: none;
  border: none;
  cursor: pointer;
  border-radius: var(--border-radius-xs);
  transition: all 150ms var(--easing-default);
}

.toast-close:hover {
  background-color: var(--surface-base);
  color: var(--text-primary);
}

@keyframes slideIn {
  from {
    opacity: 0;
    transform: translateX(100%);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}
```

### Inline Success Styles
```css
.success-message {
  display: flex;
  align-items: flex-start;
  gap: var(--spacing-md);
  padding: var(--spacing-lg);
  background-color: var(--success-light);
  border: 1px solid var(--success-base);
  border-radius: var(--border-radius-md);
}

.success-icon {
  flex-shrink: 0;
  color: var(--success-base);
  width: 24px;
  height: 24px;
  margin-top: 2px;
}

.success-title {
  font-size: var(--font-size-base);
  font-weight: 600;
  color: var(--text-primary);
  margin: 0 0 var(--spacing-xs) 0;
}

.success-description {
  font-size: var(--font-size-sm);
  color: var(--text-secondary);
  margin: 0;
}
```

### Form Success Styles
```css
.form-success {
  text-align: center;
  padding: var(--spacing-2xl);
  max-width: 400px;
  margin: 0 auto;
}

.success-illustration {
  margin-bottom: var(--spacing-lg);
}

.success-checkmark {
  width: 80px;
  height: 80px;
}

.checkmark-circle {
  animation: drawCircle 600ms ease-out forwards;
}

.checkmark {
  stroke-dasharray: 50;
  stroke-dashoffset: 50;
  animation: drawCheck 400ms ease-out 200ms forwards;
}

@keyframes drawCircle {
  from { stroke-dashoffset: 157; }
  to { stroke-dashoffset: 0; }
}

@keyframes drawCheck {
  from { stroke-dashoffset: 50; }
  to { stroke-dashoffset: 0; }
}

.form-success-title {
  font-size: var(--font-size-xl);
  font-weight: 600;
  color: var(--text-primary);
  margin: 0 0 var(--spacing-sm) 0;
}

.form-success-message {
  font-size: var(--font-size-base);
  color: var(--text-secondary);
  margin: 0 0 var(--spacing-lg) 0;
}
```

## Animation Patterns

### Checkmark Animation
```css
@keyframes checkmark {
  0% { 
    stroke-dashoffset: 50; 
    opacity: 0; 
  }
  100% { 
    stroke-dashoffset: 0; 
    opacity: 1; 
  }
}

.checkmark {
  stroke-dasharray: 50;
  stroke-dashoffset: 50;
  animation: checkmark 400ms ease-out forwards;
}
```

### Slide Up Animation
```css
@keyframes slideUp {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.success-message,
.form-success {
  animation: slideUp 300ms var(--easing-decelerate);
}
```

## Timing & Behavior

### Auto-dismiss
- **Toast**: 5 seconds
- **Inline**: Persistent until dismissed
- **Form Success**: Manual dismissal or navigation

### Interaction
```javascript
// Toast auto-dismiss
setTimeout(() => {
  toast.classList.add('hiding');
  setTimeout(() => toast.remove(), 300);
}, 5000);

// Dismiss button
toastClose.addEventListener('click', () => {
  toast.classList.add('hiding');
  setTimeout(() => toast.remove(), 300);
});
```

## Accessibility

### ARIA
```html
<!-- Toast -->
<div class="toast toast-success" role="alert" aria-live="polite">

<!-- Inline -->
<div class="success-message" role="status" aria-live="polite">

<!-- Form success -->
<div class="form-success" role="status" aria-live="polite">
```

### Screen Reader
- Announce success message immediately
- Provide context about what succeeded
- Allow dismissal via keyboard (Esc key)

### Focus Management
- Toast: Don't steal focus
- Inline: Move focus to first action button
- Form: Move focus to primary action

## Testing Checklist

- [ ] Toast appears and auto-dismisses
- [ ] Inline success shows on form submit
- [ ] Form success animation plays
- [ ] Colors meet contrast requirements
- [ ] Screen readers announce success
- [ ] Keyboard dismiss works
- [ ] Animations respect prefers-reduced-motion