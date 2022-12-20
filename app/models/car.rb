class Car < ApplicationRecord
  validates :number_plate, presence: true
  validates :car_name, presence: true
  validates :gas, presence: true
  validates :interior, presence: true
  validates :exterior, presence: true
  validates :c_sheet, presence: true
  validates :b_sheet, presence: true
  validates :j_sheet, presence: true
end

