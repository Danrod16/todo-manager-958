class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    actions = ["add", "mark as done", "delete", "list", "quit"]
    answer = ""
    until answer == 4
      puts "What do you want to do:"
      actions.each_with_index do |action, index|
        puts "#{index + 1} - #{action}"
      end
      answer = gets.chomp.to_i - 1
      controller_actions(answer)
    end
  end

  def controller_actions(answer)
    case answer
    when 0 then @controller.create
    when 1 then @controller.mark_as_done
    when 2 then @controller.destroy
    when 3 then @controller.list
    else
      puts "Goodbye"
    end
  end

end
