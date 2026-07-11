module Billing
  class Invoice
    def total(amount_cents, quantity)
      amount_cents * quantity / 100.0
    end
  end
end

module Billing
  class Discount
    def apply(amount_cents, percent)
      amount_cents - (amount_cents * percent / 100.0)
    end
  end
end
