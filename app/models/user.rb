class User < ActiveRecord::Base
  attr_accessible :age, :applicant_id, :email, :gender, :givenname, :grade, :interest, :organization, :password_digest, :phone, :program_id, :surname, :username

  has_secure_password

  has_and_belongs_to_many :programs

  validates :username, presence: true
  validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 100}
  validates :gender, presence: true
  validates :interest, presence: true

end
