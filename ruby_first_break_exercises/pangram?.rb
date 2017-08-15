LETTERS = ['a', 'ą', 'b', 'c', 'ć', 'd', 'e', 'ę', 'f', 'g', 'h', 'i', 'j',
  'k', 'l', 'ł', 'm', 'n', 'ń', 'o', 'ó', 'p', 'r', 's', 'ś', 't', 'u', 'w',
  'y', 'z', 'ź', 'ż']

def pangram?(sentence)
  LETTERS.each do |letter|
    if sentence.downcase.include?(letter) == false
      return false
    end
  end
  return true
end

puts pangram?('Dość błazeństw, żrą mój pęk luźnych fig')
puts pangram?('Losowy ciąg znaków')
