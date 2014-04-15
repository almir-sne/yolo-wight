class Task < ActiveRecord::Base
  scope :done, lambda {where done: true}
  scope :todo, lambda {where done: false}
  
  def start=(str_date)
    self[:start] = Date.parse(str_date)
  end
end
