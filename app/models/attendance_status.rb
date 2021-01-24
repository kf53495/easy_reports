class AttendanceStatus < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '定刻' },
    { id: 3, name: '遅刻' }
  ]

  include ActiveHash::Associations
  has_many :reports
end