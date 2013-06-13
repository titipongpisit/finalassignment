class Program < ActiveRecord::Base
  attr_accessible :applicant_id, :course, :enddate, :section, :serialnumber, :startdate, :title, :user_id

  has_and_belongs_to_many :users

  validates :serialnumber, presence: true
  validates :title, presence: true
  validates :section, numericality: {only_integer: true}
  validates :course, numericality: {only_integer: true}

end
