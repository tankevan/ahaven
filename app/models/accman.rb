class Accman < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :asanas
  belongs_to :user

end
