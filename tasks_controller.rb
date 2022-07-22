require_relative 'task_repository.rb'
require_relative 'view.rb'

class TasksController
  def initialize(repo)
    @repository = repo
    @view = View.new
  end
  #CRUD

  #Create
  def create
    description = @view.ask_user_for_description
    # create instance of task
    task = Task.new(description)
    @repository.add(task)
  end

  #Read
  def list
    tasks = @repository.all
    @view.display_tasks(tasks)
  end

  #Update
  def mark_as_done
    # list tasks
    list
    # ask the user for index
    task_index = @view.ask_user_for_index # 1
    # mark as done (is_done)
    task = @repository.find(task_index)
    task.is_done
    # list tasks
    list
  end

  #Delete

  def destroy
    # show list of tasks
    list
    # ask the user what task to delete
    task_index = @view.ask_user_for_index
    # delete task by index
    @repository.remove(task_index)
    list
  end

end
