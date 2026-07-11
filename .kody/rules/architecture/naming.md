---
title: Ruby naming conventions
path: ["app/**/*.rb", "lib/**/*.rb"]
severity_min: low
---

## Instructions

**NAME1**: Predicate methods must end with `?` and must not be prefixed with `is_`.

## Examples

### Bad
```ruby
def is_active
  status == :active
end
```

### Good
```ruby
def active?
  status == :active
end
```
