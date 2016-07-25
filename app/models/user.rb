class User < ApplicationRecord
  #CHANGED
  has_one :vendor
  #before_action :authenticate_user!
  
  validates :email, confirmation: { case_sensitive: false }
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
