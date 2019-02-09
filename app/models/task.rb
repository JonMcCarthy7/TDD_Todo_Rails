# frozen_string_literal: true

class Task < ApplicationRecord
  validates :name, presence: true
  validates :priority, presence: true
  validates :completed, presence: true

  def high_priority?
    priority >= 5
  end
  
end
