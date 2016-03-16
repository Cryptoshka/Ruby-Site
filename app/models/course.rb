class Course < ActiveRecord::Base
  belongs_to :teacher
  validates :title, :teacher_id, presence: true
end