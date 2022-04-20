histbook = []

histbook << 'Walden by Henry David Thoreau'



histbook << 'Brave New World by Aldous Huxley'



histbook << '1984 by George Orwell'

histbook.each_with_index do |item, index|
    index = 1
    puts "#{index}: #{item}"
    index += 1
    puts "\n" 
end 