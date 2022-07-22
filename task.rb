class Task
  attr_reader :description
  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def is_done
    @done = true
  end
end

