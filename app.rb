require_relative 'task_repository.rb'
require_relative 'task.rb'
require_relative 'tasks_controller.rb'
require_relative 'router'

repo = TaskRepository.new
controller = TasksController.new(repo)
router = Router.new(controller)
router.run
