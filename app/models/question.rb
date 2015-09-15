class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers

  validates_presence_of :title, message: "is needed for a valid question!"
  validates_presence_of :body, message: "is needed for a valid question!"
end
