class Report < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :lesson_type
  belongs_to :attendance_status

  def self.search(search)
    if search != ""
      Report.where('month LIKE(?)', "%#{search}%")
    else
      Report.last(8)
    end
  end

  def self.chose_student
    
  end
end
