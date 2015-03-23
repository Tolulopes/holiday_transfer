class User < ActiveRecord::Base
  has_many :packages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
