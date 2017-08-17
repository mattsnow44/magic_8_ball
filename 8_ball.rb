@answers = [
  'It is certain',
  'It is decidedly so',
  'Without a doubt',
  'Yes, definitely',
  'You may rely on it',
  'As I see it, yes',
  'Most likely',
  'Outlook is good',
  'Yes',
  'Signs point to yes',
  'Reply hazy try again',
  'Ask again later',
  'Better not tell you now',
  'Cannot predict now',
  'Concentrate and ask again',
  "Don't count on it",
  'My reply is no',
  'My sources say no',
  'Outlook not so good',
  'Very doubtful'
]



def menu
  puts 'Welcome to the Magic 8 Ball!'
  puts 'Ask a question and the universe will answer!'
  puts 'Or, if you are a coward, press quit to exit.'
  print '> '
  question = gets.strip
  exit if question == 'quit'
  calculate(question)
  menu
end

def calculate(question)
  puts @answers.sample unless question == 'quit'
end

menu
