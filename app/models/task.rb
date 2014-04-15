class Task < ActiveRecord::Base
  validates :description, :presence => true
  validates :start, :presence => true
  
  scope :done, lambda {where done: true}
  scope :todo, lambda {where done: false}
  
  def start=(str_date)
    begin
      date = Date.parse(str_date)
    rescue => exception
      date = nil
    end
    self[:start] = date
  end
end
