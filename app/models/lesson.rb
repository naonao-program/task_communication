class Lesson < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :weekday
  end

  enum weekday:{
    "---":0,
    月曜日:1,
    火曜日:2,
    水曜日:3,
    木曜日:4,
    金曜日:5,
    土曜日:6,
    日曜日:7
  }
end
