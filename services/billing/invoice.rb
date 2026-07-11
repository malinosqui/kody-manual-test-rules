module Billing
  class Invoice
    def total(amount_cents, quantity)
      amount_cents * quantity / 100.0
    end
  end
end
