require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  # it { should validate_presence_of :name }

  describe ('#index') do
    it("returns all products") do
      product = Product.create({name: "trampoline", cost: "100", country_of_origin: "USA"})
      product2 = Product.create({name: "line", cost: "100", country_of_origin: "USA"})
      expect(Product.all).to(eq([product, product2]))
    end
  end

  describe ('#update') do
    it ('allows a user to update a product') do
      product = Product.create({name: "trampoline", cost: "100", country_of_origin: "USA"})
      product.save
      product.update({:name => 'bonkers'})
      expect(product.name).to(eq('bonkers'))
    end
  end

  describe ('#titelize_product') do
    it("titleizes the name of an product") do
      product = Product.create({name: "trampoline", cost: "100", country_of_origin: "USA"})
      expect(product.name()).to(eq("Trampoline"))
    end
  end
end
