class User < ActiveRecord::Base
    has_secure_password
    has_many :tasks
    has_many :places, through: :tasks
    validates_presence_of :first_name, :last_name, :username, :password, :password_confirmation
    validates :username, uniqueness: true

end
