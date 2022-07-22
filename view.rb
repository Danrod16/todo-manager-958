class View
  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1} - #{task.description} #{task.done? ? '[X]' : '[ ]'}"
    end
  end

  def ask_user_for_description
    puts "What task do you want to add?"
    gets.chomp
  end


  def ask_user_for_index
    puts "Which task?(Write number)"
    gets.chomp.to_i - 1
  end
end

