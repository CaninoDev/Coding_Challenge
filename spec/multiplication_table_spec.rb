require "multiplication_table"

describe MultiplicationTable do
  array = [2, 3, 5, 7, 11, 13]
  tb = MultiplicationTable.new(array, array)
  describe "#get_val_size" do
    context "given a value, determine its size, in number of characters" do
      it "returns 4" do
        value = 1246
        expect(tb.get_val_size(value)).to eql(4)
      end
    end
  end
  describe "#get_col_sizes" do
    context "find the maximum length of value at each column of the table" do
      it "returns [1, 1, 1, 3, 3]" do
        array1 = [[10, 12, 14], [15, 18, 21], [20, 24, 128]]
        expect(tb.get_col_sizes(array1)).to eql([2,2,3])
      end
    end
  end
  describe "#create_cell_string" do
    context "construct a string prepended with a space, the cell value, appended with remaining spaces to fill out the maximum col_size plus a space for padding" do
      it "returns ' 222   ┃'" do
        cell_value = 222
        col_size = 6
        expect(tb.create_cell_string(cell_value, col_size)).to eql(" 222   ┃")
      end
    end
  end
  describe "#create_border_string" do
    context "given a character '━', '╂', and column size, render the border of appropriate size" do
      it "returns '━━━━━━╂'" do
        col_size = 6
        expect(tb.create_border_string('━', '╂', col_size)).to eql("━━━━━━━╂")
      end
    end
  end
  describe "#check_width" do
    context "ensures that the table can render given the current terminal's width" do
      it "returns true" do
        terminal_width = `tput cols`.to_i
        string_array = Array.new(terminal_width)
        expect(tb.check_width(string_array)).to eql(true)
      end
      it "returns false" do
        terminal_width = `tput cols`.to_i
        string_array = Array.new(terminal_width+1)
        # Unsure how to test for this
      end
    end
  end
  describe "#create_multiplication_array" do
    context "given two arrays of identical size, multiply together to make the multiplication table" do
      it "returns [[4, 6, 10, 14, 22, 26], [6, 9, 15, 21, 33, 39], [10, 15, 25, 35, 55, 65], [14, 21, 35, 49, 77, 91], [22, 33, 55, 77, 121, 143], [26, 39, 65, 91, 143, 169]]" do
        expect(tb.create_multiplication_array(array, array)).to eql([[4, 6, 10, 14, 22, 26], [6, 9, 15, 21, 33, 39], [10, 15, 25, 35, 55, 65], [14, 21, 35, 49, 77, 91], [22, 33, 55, 77, 121, 143], [26, 39, 65, 91, 143, 169]])
      end
    end
  end
  describe "#preformat_table" do
    context "add row and column headers to the table, to make suitable for printing" do
      it "returns [['', 2, 3, 5], [7, 14, 22, 34], [11, 21, 33, 51], [17, 35, 55, 85]]" do
        multiplication_array = tb.create_multiplication_array(array, array)
          expect(tb.preformat_table(multiplication_array, array, array)).to eql([["", 2, 3, 5, 7, 11, 13], [2, 4, 6, 10, 14, 22, 26], [3, 6, 9, 15, 21, 33, 39], [5, 10, 15, 25, 35, 55, 65], [7, 14, 21, 35, 49, 77, 91], [11, 22, 33, 55, 77, 121, 143], [13, 26, 39, 65, 91, 143, 169]])
      end
    end
  end
end

