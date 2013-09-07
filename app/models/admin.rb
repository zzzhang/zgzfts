class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,:name, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :news
  has_many :notices
  has_many :distributions
  has_many :books
end
