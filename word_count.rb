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

count_frequency(
  words_from_string( 'Ruby! Hello Ruby' )
).sort_by { |word,count| count }
  .reverse
  .take(5)
  .each { |t| p t }
