# Agent guidelines

**DOC1**: Every public method must have a YARD comment (`@param`, `@return`).

## Examples

### Bad
```ruby
def refund(payment)
  payment.reverse!
end
```

### Good
```ruby
# Reverses a settled payment.
# @param payment [Payment] the settled payment
# @return [Result]
def refund(payment)
  payment.reverse!
end
```
