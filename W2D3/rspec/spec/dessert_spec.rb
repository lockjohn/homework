require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=endd

describe Dessert do
  let(:chef) { double("chef", name: "Hugo") } #mock class of chef
  let(:blondie) {Dessert.new("blondie", 13, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(:blondie.type).to eq("blondie")
    end

    it "sets a quantity" do
      expect(:blondie.quantity).to eq(13)
    end

    it "starts ingredients as an empty array" do
      expect(:blondie.ingredients).to be([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect(Dessert.new("cookie", nil, chef)).to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(:blondie.add_ingredient(:chips)).to include(:chips)
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = [:eggs, :sugar, :flour, :vanilla]
      ingredients.each {|ing| :blondie.add_ingredient(ing)}

      expect(:blondie.ingredients).to eq(ingredients)
      blondie.mix!
      expect(:blondie.ingredients).to not_eq(ingredients)
      expect(:blondie.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
