module Payments
  class Charge
    def charge!(balance, amount)
      raise InsufficientFunds, "balance too low" if balance < amount

      Ledger.debit(amount)
    end
  end
end

module Payments
  class Refund
    def refund!(payment)
      raise RefundNotAllowed unless payment.settled?

      payment.reverse
    end
  end
end
