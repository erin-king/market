require 'pry'

class Vendor

  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
    @stock = 0
  end

  def stock(item, amount = 0)
    total = 0
    total += amount
    # @inventory = {}
    @inventory.store(item, total)
  end

  def check_stock(item)
    # @stock
    # @inventory = {}
    # @inventory.store(item, @stock)

    return @stock
    # inventory.store(item, @stock)
    # stock(item, amount = 0)
    # amount +=
    # returns total(from stock, incremented)
  end

  # def inventory
  #   check_stock(item)
  #   @inventory.store(item, @stock)
  # end

  #............

  #
  # def check_stock(item)
  #   stock(item, amount = 0)
  # end
end
