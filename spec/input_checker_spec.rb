require "input_checker"

  describe "#is_integer" do
    context "given an input with non-numerical characters" do
      it "returns false" do
        expect(is_integer("ten")).to eql(false)
      end
    end
    context "given an integer input" do
      it "returns true" do
        expect(is_integer("10")).to eql(true)
      end
    end
  end
  describe "#is_natural" do
    context "given a negative integer input" do
      it "returns false" do
        expect(is_natural(-10)).to eql(false)
      end
    end
    context "given a positive integer input" do
      it "returns true" do
        expect(is_natural(10)).to eql(true)
      end
    end
  end
  describe "#is_valid" do
    context "given an invalid user input, 'ten'" do
      it "returns false" do
        expect(is_valid("ten")).to eql(false)
      end
    end
    context "given an invalid user input, '-10'" do
      it "returns true" do
        expect(is_valid("-10")).to eql(false)
      end
    end
    context "given an valid user input, '10'" do
      it "returns true" do
        expect(is_valid("10")).to eql(true)
      end
    end
  end
