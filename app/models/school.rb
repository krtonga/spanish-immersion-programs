class School < ActiveRecord::Base

  has_many :courses
  has_many :homestays
  has_many :comments

  accepts_nested_attributes_for :courses, allow_destroy: true
  accepts_nested_attributes_for :homestays, allow_destroy: true
  accepts_nested_attributes_for :comments

  def self.search(col, search=nil)
    if search
      self.where("#{col} LIKE?", "%#{search}%")
    else
      self.all
    end
  end





  # def get_image

  #   if self.image_url.nil?
  #     # ALL THE CODE TO GET AN IMAGE
  #   end

  #   self.image_url

  # end




end
