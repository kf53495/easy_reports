class Report < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :lesson_type
end
