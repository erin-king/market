require 'pry'

class Vendor

  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def stock(item, amount = 0)
    if @inventory == {}
      @inventory.store(item, amount)
    else
      @inventory[item] += amount
    end
  end

  def check_stock(item)
    @inventory[item]
  end





  # def stock(item, amount = 0)
  #   # binding.pry
  #   total = 0
  #   total += amount
  #   # binding.pry
  #   @inventory.store(item, total)
  #   # return total
  # end
  #
  # def check_stock(item)
  #   stock(item, amount = 0)
  # end

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
