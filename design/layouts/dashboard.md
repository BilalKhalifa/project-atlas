# Dashboard Layout Specification

## Overview
The dashboard layout provides a consistent, responsive structure for displaying key metrics, recent activity, and actionable items. It follows a card-based information architecture with clear visual hierarchy.

## Layout Structure

```
┌─────────────────────────────────────────────────────────────────┐
│ Header (64px)                                                   │
├─────────────────────────────────────────────────────────────────┤
│ Sidebar (240px) │ Main Content Area                            │
│                 │                                              │
│ ┌─────────────┐ │ ┌──────────────────────────────────────────┐ │
│ │ Logo        │ │ │ Metric 1    Metric 2    Metric 3       │ │
│ ├─────────────┤ │ ├──────────────────────────────────────────┤ │
│ │ Navigation  │ │ │                                          │ │
│ │   - Dashbrd │ │ │ Recent Activity                          │ │
│ │   - Report  │ │ │   Card                                   │ │
│ │   - Analytic│ │ │                                          │ │
│ │   - Settings│ │ │                                          │ │
│ │   - Team    │ │ │ Quick Actions                            │ │
│ │   - System  │ │ │                                          │ │
│ └─────────────┘ │ │                                          │ │
│                 │ └──────────────────────────────────────────┘ │
└─────────────────┴────────────────────────────────────────────┘
```

## Header Component

### Structure
```html
<header class="header">
  <div class="header-container">
    <div class="header-brand">
      <button class="button button-icon">
        <svg class="menu-icon" aria-label="Open menu"></svg>
      </button>
      <div class="logo">Company</div>
    </div>
    
    <div class="header-actions">
      <div class="search-container">
        <input type="search" class="search-input" placeholder="Search...">
        <button class="button button-icon" aria-label="Search">
          <svg class="search-icon"></svg>
        </button>
      </div>
      
      <div class="user-menu">
        <button class="user-button">
          <img src="avatar.jpg" alt="User avatar" class="user-avatar">
          <span class="user-name">John Doe</span>
          <svg class="dropdown-icon" aria-hidden="true"></svg>
        </button>
      </div>
    </div>
  </div>
</header>
```

### Styles
```css
.header {
  position: sticky;
  top: 0;
  z-index: 100;
  height: 64px;
  background-color: var(--background-base);
  border-bottom: 1px solid var(--border-base);
  box-shadow: var(--shadow-sm);
}

.header-container {
  display: flex;
  align-items: center;
  justify-content: space-between;
  max-width: 1200px;
  height: 100%;
  padding: 0 var(--spacing-lg);
  margin: 0 auto;
}

.header-brand {
  display: flex;
  align-items: center;
  gap: var(--spacing-sm);
}

.user-avatar {
  width: 32px;
  height: 32px;
  border-radius: 50%;
}
```

## Sidebar Component

### Structure
```html
<nav class="sidebar">
  <div class="sidebar-content">
    <div class="sidebar-section">
      <h3 class="sidebar-title">Navigation</h3>
      <ul class="sidebar-nav">
        <li>
          <a href="#" class="sidebar-nav-item active">
            <svg class="nav-icon" aria-hidden="true"></svg>
            <span>Dashboard</span>
          </a>
        </li>
        <li>
          <a href="#" class="sidebar-nav-item">
            <svg class="nav-icon" aria-hidden="true"></svg>
            <span>Reports</span>
          </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
```

### Styles
```css
.sidebar {
  position: sticky;
  top: 64px;
  height: calc(100vh - 64px);
  width: 240px;
  background-color: var(--background-base);
  border-right: 1px solid var(--border-base);
  overflow-y: auto;
}

.sidebar-nav-item {
  display: flex;
  align-items: center;
  gap: var(--spacing-sm);
  padding: var(--spacing-sm) var(--spacing-md);
  color: var(--text-secondary);
  text-decoration: none;
  border-radius: var(--border-radius-sm);
  transition: all 150ms var(--easing-default);
}

.sidebar-nav-item:hover,
.sidebar-nav-item:focus {
  background-color: var(--surface-base);
  color: var(--text-primary);
}

.sidebar-nav-item.active {
  background-color: var(--primary-base);
  color: var(--primary-contrast);
}
```

## Main Content Area

### Grid Layout
```css
.main-content {
  flex: 1;
  padding: var(--spacing-lg);
  overflow: auto;
}

.dashboard-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: var(--spacing-lg);
  margin-bottom: var(--spacing-lg);
}

.dashboard-section {
  margin-bottom: var(--spacing-xl);
}
```

## Metric Cards

### Structure
```html
<div class="metric-card">
  <div class="metric-header">
    <h3 class="metric-title">Total Users</h3>
    <span class="metric-icon">👥</span>
  </div>
  <div class="metric-value">1,248</div>
  <div class="metric-change positive">
    <svg class="trend-icon" aria-hidden="true"></svg>
    <span>+12.5% from last month</span>
  </div>
</div>
```

### Styles
```css
.metric-card {
  background-color: var(--background-base);
  border: 1px solid var(--border-base);
  border-radius: var(--border-radius-md);
  padding: var(--spacing-lg);
  transition: all 200ms var(--easing-default);
  box-shadow: var(--shadow-sm);
}

.metric-card:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
}

.metric-title {
  font-size: var(--font-size-sm);
  color: var(--text-secondary);
  margin: 0 0 var(--spacing-sm) 0;
}

.metric-value {
  font-size: var(--font-display);
  font-weight: 700;
  margin: 0 0 var(--spacing-sm) 0;
}

.metric-change {
  display: flex;
  align-items: center;
  gap: var(--spacing-xs);
  font-size: var(--font-size-sm);
}

.metric-change.positive {
  color: var(--success-base);
}

.metric-change.negative {
  color: var(--error-base);
}
```

## Recent Activity Section

### Structure
```html
<section class="activity-section">
  <h2 class="section-title">Recent Activity</h2>
  <div class="activity-list">
    <div class="activity-item">
      <div class="activity-avatar">
        <img src="user1.jpg" alt="User 1" class="avatar">
      </div>
      <div class="activity-content">
        <span class="activity-text">
          <strong>User 1</strong> updated project status
        </span>
        <time class="activity-time">2 hours ago</time>
      </div>
    </div>
  </div>
</section>
```

## Quick Actions Section

### Structure
```html
<section class="actions-section">
  <h2 class="section-title">Quick Actions</h2>
  <div class="actions-grid">
    <button class="action-button">
      <svg class="action-icon" aria-hidden="true"></svg>
      <span>Create Report</span>
    </button>
    <button class="action-button">
      <svg class="action-icon" aria-hidden="true"></svg>
      <span>Export Data</span>
    </button>
  </div>
</section>
```

## Responsive Breakpoints

### Mobile (< 768px)
```css
@media (max-width: 767px) {
  .sidebar {
    position: fixed;
    transform: translateX(-100%);
    transition: transform 300ms var(--easing-default);
  }
  
  .sidebar.active {
    transform: translateX(0);
  }
  
  .main-content {
    padding: var(--spacing-md);
  }
  
  .dashboard-grid {
    grid-template-columns: 1fr;
  }
  
  .header-actions {
    display: none;
  }
  
  .header-mobile-toggle {
    display: block;
  }
}
```

### Tablet (768px - 1024px)
```css
@media (min-width: 768px) and (max-width: 1024px) {
  .sidebar {
    width: 200px;
  }
  
  .main-content {
    padding: var(--spacing-md);
  }
  
  .dashboard-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
```

### Desktop (> 1024px)
```css
@media (min-width: 1025px) {
  .main-content {
    padding: var(--spacing-lg);
  }
  
  .dashboard-grid {
    grid-template-columns: repeat(4, 1fr);
  }
}
```

## Accessibility

### Skip Links
```html
<a href="#main-content" class="skip-link">Skip to main content</a>
```

### ARIA Landmarks
```html
<header role="banner">
<nav role="navigation" aria-label="Main navigation">
<main role="main" id="main-content">
```

### Keyboard Navigation
- Tab: Navigate between elements
- Esc: Close sidebar/mobile menu
- Enter: Activate links/buttons

## Testing Checklist

- [ ] Header remains fixed on scroll
- [ ] Sidebar collapses on mobile
- [ ] Main content scrolls independently
- [ ] Metric cards resize appropriately
- [ ] Color contrast meets WCAG AA
- [ ] All interactive elements keyboard accessible
- [ ] Focus indicators visible
- [ ] Screen reader navigation works