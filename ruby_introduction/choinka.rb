AREA_WIDTH = 75

def print_tree_segment(starting_width, rows)
  rows.times do |step|
    spaces = (AREA_WIDTH - starting_width) / 2 - step
    spaces.times { print " "}
    (starting_width + 2 * step).times { print "*" }
    print "\n"
  end
end

print_tree_segment(1, 3)
print_tree_segment(5, 3)
print_tree_segment(7, 3)
print_tree_segment(9, 3)
print_tree_segment(3, 1)
