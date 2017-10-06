gets.to_i.times do
  binary = [gets.to_f].pack('g').unpack('B*').first
  hex = binary.to_i(2).to_s(base=16)
  hex = "00000000" if hex == "0"
  puts hex.scan(/.{2}/).map { |e| e[/[0]./] ? e[-1] : e }.join(" ")
end
