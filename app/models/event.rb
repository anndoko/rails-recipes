class Event < ApplicationRecord

  validates_presence_of :name

  # 修改網址
  def to_param
    "#{self.id}-#{self.name}"
  end

end
