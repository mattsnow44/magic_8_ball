@default_answers = [
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

@answers = @default_answers.clone


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
  if question == 'add answer'
    add_answer
  elsif question == 'reset answers'
    reset_answers
  elsif question == 'print answers'
    print_answers
  else
  puts @answers.sample unless question == 'quit'
  end
end

def add_answer
  puts 'What answer would you like to add?'
  print '> '
  new_answer = gets.strip
  if @answers.include? new_answer
    puts 'That answer already exists'
  else
    @answers << new_answer
    puts "#{new_answer} has been added!"
  end
end

def reset_answers
  @answers = @default_answers.clone
  puts 'Answers have been reset'
end

def print_answers
  puts @answers
end

menu
