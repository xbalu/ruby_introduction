AreaWidth = 75

def print_tree_segment(starting_width, rows)
  rows.times do |step|
    spaces = (AreaWidth - starting_width) / 2 - step
    spaces.times { print " "}
    (starting_width + 2 * step).times { print "*" }
    print "\n"
  end
end

print_tree_segment(1, 3)
print_tree_segment(3, 4)
print_tree_segment(5, 4)
print_tree_segment(7, 5)
print_tree_segment(3, 1)