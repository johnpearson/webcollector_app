class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible  :name, :email, :company, :occupation, :location,
                    :password, :password_confirmation, :remember_me
  
  # Users have many folders that are associated with each user
  has_many :folders, :dependent => :destroy
end
