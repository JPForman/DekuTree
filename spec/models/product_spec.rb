require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  # it { should validate_presence_of :name }

  it("titleizes the name of an album") do
    product = Product.create({name: "trampoline", cost: "100", country_of_origin: "USA"})
    expect(product.name()).to(eq("Trampoline"))
  end
end
