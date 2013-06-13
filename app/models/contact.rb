class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :messagetype

  validates :email, presence: true
  
end
