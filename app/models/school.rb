class School < ActiveRecord::Base

  has_many :courses
  has_many :homestays

  accepts_nested_attributes_for :courses, allow_destroy: true
  accepts_nested_attributes_for :homestays, allow_destroy: true
end
