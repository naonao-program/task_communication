class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  self.inheritance_column = :_type_disabled
  
  with_options presence: true do
    validates :type
    validates :nickname
    validates :school_name
  end

  enum type:{
    "---":0,
    生徒:1,
    先生:2
  }
end
