class Asana < ActiveRecord::Base
  attr_accessible :api_key
  belongs_to :accman
end
