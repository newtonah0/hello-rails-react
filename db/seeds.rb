greetings = [
  'Salam-alaykum',
  'Hello',
  'Hi',
  'How-are-you?',
  'Namaste'
]

greetings.each do |greeting|
  Message.create(content: greeting)
end

puts 'Seeded database with greetings.'

