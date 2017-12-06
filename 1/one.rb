def part_one(line)
  sum = 0
  line.split("").each_with_index do |e,i|
    sum += e.to_i if line[i] == line[i+1]
  end
  sum += line[0].to_i if line[0] == line[-1]
  sum
end
def part_two(line)
  sum = 0
  line.split("").each_with_index do |e,i|
    sum += e.to_i if line[i] == line[( i + line.length / 2) % line.length]
  end
  sum
end
File.readlines("input.txt").each do |line|
  puts part_one(line.chomp)
  puts part_two(line.chomp)
end
	

