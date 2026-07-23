# Empty State Layout

## Overview
Empty states provide guidance when there is no data to display, helping users understand what to do next.

## Empty State Structure

### Basic Empty State
```html
<div class="empty-state">
  <div class="empty-icon">📭</div>
  <h3 class="empty-title">No items found</h3>
  <p class="empty-description">
    It looks like you don't have any items yet. Try adding one to get started.
  </p>
  <button class="button button-primary button-md">
    Add Your First Item
  </button>
</div>
```

### Form Empty State
```html
<div class="empty-state">
  <div class="empty-icon">📝</div>
  <h3 class="empty-title">No forms submitted</h3>
  <p class="empty-description">
    You haven't submitted any forms yet. Start by creating a new form.
  </p>
  <div class="empty-actions">
    <button class="button button-primary button-sm"button class="button button-secondary button-md</div>
</div>
      Create New Form
    </button>
    <button class="button button-secondary button-md">
      View Templates
    </button>
  </div>
</div>
```

### Search Results Empty State
```html
<div class="empty-state">
  <div class="empty-icon">🔍</div>
  <h3 class="empty-title">No results found</h3>
  <p class="empty-description">
    Your search for "quantum computing" didn't match any documents.
  </p>
  <div class="empty-actions">
    <button class="button button-outline button-md">
      Try a different search
    </button>
    <a href="#" class="empty-link">
      Browse all documents
    </a>
  </div>
</div>
```

## Styles
```css
.empty-state {
  text-align: center;
  padding: var(--spacing-xl);
  max-width: 480px;
  margin: 0 auto;
}

.empty-icon {
  font-size: 48px;
  margin-bottom: var(--spacing-md);
  display: block;
}

.empty-title {
  font-size: var(--font-size-lg);
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: var(--spacing-sm);
}

.empty-description {
  font-size: var(--font-size-base);
  color: var(--text-secondary);
  margin-bottom: var(--spacing-lg);
  line-height: 1.5;
}

.empty-actions {
  display: flex;
  gap: var(--spacing-sm);
  justify-content: center;
  flex-wrap: wrap;
}

.empty-link {
  display: inline-flex;
  align-items: center;
  gap: var(--spacing-xs);
  color: var(--primary-base);
  text-decoration: none;
  font-weight: 500;
}

.empty-link:hover {
  text-decoration: underline;
}
```

## Guidelines

### Do's
- Use friendly, helpful language
- Provide clear next steps
- Use relevant icons or illustrations
- Keep actions prominent and accessible
- Maintain visual consistency with the rest of the UI

### Don'ts
- Don't use technical jargon
- Don't leave users without guidance
- Don't make the empty state too verbose
- Don't use aggressive or negative language
- Don't forget accessibility considerations

## States

### Loading Empty State
```html
<div class="empty-state loading">
  <div class="spinner"></div>
  <p class="empty-description">Loading your data...</p>
</div>
```

### Error Empty State
```html
<div class="empty-state error">
  <div class="empty-icon">⚠️</div>
  <h3 class="empty-title">Something went wrong</h3>
  <p class="empty-description">
    We couldn't load your data. Please try again or contact support.
  </p>
  <button class="button button-primary button-md">
    Retry
  </button>
</div>
```

## Accessibility

### ARIA Attributes
```html
<div 
  class="empty-state" 
  role="region" 
  aria-labelledby="empty-title" 
  aria-describedby="empty-description"
>
  <div class="empty-icon" aria-hidden="true">📭</div>
  <h3 id="empty-title" class="empty-title">No items found</h3>
  <p id="empty-description" class="empty-description">
    It looks like you don't have any items yet.
  </p>
  <button class="button button-primary button-md">
    Add Your First Item
  </button>
</div>
```

### Keyboard Navigation
- Focus should move to the primary action button
- Escape key should close modals if applicable
- Tab order should be logical