# TODO: implement the router of your app.
class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "1. List Meals"
    puts "2. Add Meal"
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    else
      puts "Invalid option"
    end
  end
end
