module Payments
  class Charge
    def charge!(balance, amount)
      raise InsufficientFunds, "balance too low" if balance < amount

      Ledger.debit(amount)
    end
  end
end
