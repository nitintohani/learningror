class User < ActiveRecord::Base
	validates_presence_of :email
	validates_uniqueness_of :email
	validates_presence_of :password
end
