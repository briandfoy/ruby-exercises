def words_from_string( string )
	string.downcase.scan( /[\w']+/ )
end

def count_frequency( list )
	counts = Hash.new(0)
	list.each do |word|
	  counts[word] += 1
  end
  counts
end

words = words_from_string( 'Ruby! Hello Ruby' )
counts = count_frequency( words )
p words
p counts

sorted = counts.sort_by { |word,count| count }
p sorted

sorted.reverse.take(5).each do |tuple|
  p tuple
end

