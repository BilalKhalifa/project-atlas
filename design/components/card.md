# Card Component Specification

## Overview
The card component is a basic container for organizing content with consistent spacing, borders, and layout. It's used throughout the interface for grouping related information.

## Card Structure
```html
<div class="card">
  <div class="card-header">
    <!-- Optional header -->
  </div>
  <div class="card-content">
    <!-- Main content -->
  </div>
  <div class="card-footer">
    <!-- Optional footer -->
  </div>
</div>
```

## Variants

### Default Card
- **Background**: Surface base color
- **Border**: 1px solid border base
- **Border radius**: md (12px)
- **Padding**: lg (24px)

### Outline Card
- **Border**: 2px solid primary base
- **Edge darkness**: Depends on state

### Transparent Card
- **Background**: Transparent
- **Border**: None

## Size Variants

### Large Card
- **Height**: Auto (min-height: 200px)
- **Padding**: 32px

### Medium Card (default)
- **Height**: Auto
- **Padding**: 24px

### Small Card
- **Height**: Low profile
- **Padding**: 16px

## Layout Patterns

### Multi-Column Layout
```css
.card-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: var(--spacing-lg);
}
```

### Card with Header
```html
<div class="card">
  <div class="card-header">
    <h3 class="job-title">Senior Engineer</h3>
    <div class="job-meta">
      <span>Google</span> | <span>Remote</span>
    </div>
  </div>
  <div class="card-content">
    <p>Lead engineering initiatives for core product</p>
  </div>
</div>
```

## States

### Default State
```css
.card {
  background-color: var(--background-base);
  border: 1px solid var(--border-base);
  border-radius: var(--border-radius-md);
  padding: var(--spacing-lg);
  transition: all 200ms var(--easing-default);
  box-shadow: var(--shadow-sm);
}
```

### Hover State
```css
.card:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
  border-color: var(--border-focus);
}
```

### Focus State
```css
.card:focus-within {
  box-shadow: var(--shadow-md);
  border-color: var(--border-focus);
}
```

### Disabled State
```css
.card:disabled, .card[data-disabled="true"] {
  opacity: 0.7;
  cursor: default;
  pointer-events: none;
}
```

## Usage Guidelines

### When to Use
- Group related information together
- Enable scanability of content collections
- Present actionable items with consistent format
- Display information with clear hierarchy

### Don'ts
- Don't make cards too wide (max width: 100%)
- Don't use cards for navigation (use buttons)
- Don't pack too much content into one card
- Don't use borders inconsistently

## Accessibility
- Proper contrast ratios maintained
- Logical reading order preserved
- ARIA attributes: role="article" or role="region"
- Use as sections for landmark navigation

## Implementation Examples

### Basic Card
```html
<div class="card">
  <div class="card-content">
    <h3 class="card-title">Card Title</h3>
    <p class="card-description">Card content goes here</p>
  </div>
</div>
```

### Card with Header and Footer
```html
<div class="card">
  <div class="card-header">
    <h3>Section Title</h3>
  </div>
  <div class="card-content">
    <p>Content goes here</p>
  </div>
  <div class="card-footer">
    <button class="button button-sm button-primary">Action</button>
  </div>
</div>
```

### Grid Cards
```css
.card-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: var(--spacing-lg);
}

.card {
  width: 100%;
}
```

### Card with Actions
```html
<div class="card">
  <div class="card-header">
    <h3>Recent Projects</h3>
  </div>
  <div class="card-content">
    <div class="grid grid-cols-2 gap-m">
      <!-- Card 1 -->
      <div class="card">
        <div class="card-badge badge-outline">New</div>
        <h3 class="card-title">Project Alpha</h3>
        <p class="card-text">Description of project Alpha</p>
      </div>
      <!-- Card 2 -->
      <div class="card">
        <div class="card-badge badge-outline">Featured</div>
        <h3 class="card-title">Project Beta</h3>
        <p class="card-text">Description of project Beta</p>
      </div>
    </div>
  </div>
</div>