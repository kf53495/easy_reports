class Report < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :lesson_type
  belongs_to :attendance_status
end
