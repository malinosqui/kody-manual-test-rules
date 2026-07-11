# Billing service rules

**BILL1**: Monetary amounts must use `Money` objects — never raw Integer/Float cents arithmetic.

### Bad
```ruby
total = amount_cents * quantity / 100.0
```

### Good
```ruby
total = Money.new(amount_cents) * quantity
```
