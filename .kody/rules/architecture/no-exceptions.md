---
title: No exceptions as control flow
path: ["app/**/*.rb", "lib/**/*.rb"]
severity_min: medium
---

## Instructions

**CF1**: Never use raise/rescue for expected business outcomes. Return Result objects instead.

## Examples

### Bad
```ruby
def charge!
  raise InsufficientFunds if balance < amount
end
```

### Good
```ruby
def charge
  return Result.failure(:insufficient_funds) if balance < amount
end
```