---
title: Use Result objects for service outcomes
path: ["app/services/**/*.rb"]
severity_min: medium
---

## Instructions

**RO1**: Service objects must return Result objects. See the full convention in `docs/conventions/result-objects.md` for details.

## Examples

### Bad
```ruby
def call
  true
end
```

### Good
```ruby
def call
  Result.success(payload)
end
```
