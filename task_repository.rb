class TaskRepository
  def initialize()
    @tasks = []
  end

  #CRUD

  #Create
  def add(task)
    @tasks << task
  end

  #Read

  def find(index)
    @tasks[index]
  end

  def all
    @tasks
  end

  #Update


  #delete
  def remove(index)
    @tasks.delete_at(index)
  end

end

p TaskRepository.new
