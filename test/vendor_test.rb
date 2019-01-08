require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'

class VendorTest < Minitest::Test

  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_instance_of Vendor, vendor
  end

  def test_it_has_attributes
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_it_starts_with_no_inventory
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal ({}), vendor.inventory
  end

  def test_it_starts_with_no_stock
    vendor = Vendor.new("Rocky Mountain Fresh")

    vendor.stock("Peaches")

    assert_equal 0, vendor.check_stock("Peaches")
  end

  def test_it_can_add_stock
    vendor = Vendor.new("Rocky Mountain Fresh")

    vendor.stock("Peaches", 30)

    assert_equal 30, vendor.check_stock("Peaches")

    vendor.stock("Peaches", 25)

    assert_equal 55, vendor.check_stock("Peaches")
  end

  def test_it_can_add_stock_to_inventory
    vendor = Vendor.new("Rocky Mountain Fresh")

    vendor.stock("Peaches", 30)

    # assert_equal 30, vendor.check_stock("Peaches")

    vendor.stock("Peaches", 25)
    vendor.stock("Tomatoes", 12)

    assert_equal ({"Peaches"=>55, "Tomatoes"=>12}), vendor.inventory
  end

end

# pry(main)> vendor.stock("Tomatoes", 12)
#
# pry(main)> vendor.inventory
# #=> {"Peaches"=>55, "Tomatoes"=>12}
