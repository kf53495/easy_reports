class LessonType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '通常授業' },
    { id: 3, name: '体験授業' },
    { id: 4, name: '講習会' }
  ]

  include ActiveHash::Associations
  has_many :reports
end
