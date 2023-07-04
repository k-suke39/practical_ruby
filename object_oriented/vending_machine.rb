require './object_oriented/drink/drink'
require './object_oriented/money/coin'
require './object_oriented/stock/stock'
require './object_oriented/money/coin_mech'
require './object_oriented/money/change'
require './object_oriented/stock/storage'

class VendingMachine
  def initialize
    @storage = Storage.new
    @coin_mech = CoinMech.new
  end

  def buy(payment, kind_of_drink)
    @coin_mech.put(payment)

    if @coin_mech.not_have_change?
      return nil
    end

    if @storage.not_have_stock?(kind_of_drink)
      return nil
    end

    @coin_mech.commit
    @storage.take_out(kind_of_drink)
  end

  def refund
    @coin_mech.refund
  end
end