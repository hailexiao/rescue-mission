class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates_presence_of :title, message: "is needed for a valid answer!"
  validates_presence_of :body, message: "is needed for a valid answer!"
end
