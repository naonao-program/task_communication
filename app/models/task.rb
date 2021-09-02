class Task < ApplicationRecord
  belongs_to :lesson
    
  with_options presence: true do
      validates :title
      validates :deadline_at
      validates :detail
  end
end
