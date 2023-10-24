# Define the class or module responsible for handling user input and output.

class UIHandler
  def self.get_user_input(prompt)
    print prompt
    gets.chomp
  end

  def self.display_message(message)
    puts message
  end
end
