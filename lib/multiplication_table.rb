class MultiplicationTable

  def initialize(array1, array2)
    @array1 = array1
    @array2 = array2
  end

  def get_val_size(value)
    cell_value = value
    cell_value.to_s.length
  end

  def get_col_sizes(arr)
    column_size_array = []
    arr.each do |sub_array|
    column_size_array.push(self.get_val_size(sub_array[-1]))
    end
    column_size_array
  end

  def create_cell_string(cell_value, col_size, border_symbol="┃")
    num_spaces = col_size - get_val_size(cell_value)
    string_of_spaces = ""

    num_spaces.times do
      string_of_spaces << " "
    end
    " " + cell_value.to_s + string_of_spaces + border_symbol
  end

  def create_border_string(bottom_border_symbol, side_border_symbol, col_size)
    string_of_border_cell = ""
    col_size += 1
    col_size.times do
      string_of_border_cell += bottom_border_symbol
    end
    string_of_border_cell << side_border_symbol
    string_of_border_cell
  end

  def check_width(string_array)
    string = string_array.join('')
    if `tput cols`.to_i < string.length
      return false
    end
    return true
end

  def create_multiplication_array(array1, array2)
    multiplication_array = []
    array1.each_with_index do |val_a, index|
      tmp = []
      array2.each do |val_b|
        tmp.push(val_a * val_b)
      end
    multiplication_array[index] = tmp
    end
  multiplication_array
  end

  def preformat_table(multiplication_array, array1, array2)
    m = multiplication_array
    a1 = array1
    a2 = array2
    a1.unshift("")
    m.unshift(a1)
    (1..m.length-1).each do |a_index|
      m[a_index].unshift(a2[a_index])
    end
    m
  end

  def print_table
    print "\n"
    print "\n"
    multiplication_array = self.create_multiplication_array(@array1, @array2)
    preformatted_table = self.preformat_table(multiplication_array,@array1, @array2)
    max_column_sizes = self.get_col_sizes(preformatted_table)
    preformatted_table.each do |subarray|
      row = []
      subarray.each_with_index do |val, index|
        row.push(self.create_cell_string(val, max_column_sizes[index], "┃"))
      end
      if check_width(row)
        print row.join('')
      else
        puts "Table cannot render: exceeds your terminal's width"
        exit!
      end
      print "\n"
      max_column_sizes.each do |col_size|
        print self.create_border_string("━", "┃", col_size)
      end
        print "\n"
    end
  end

end

