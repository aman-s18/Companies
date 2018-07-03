class User < ActiveRecord::Base
  rolify
  after_create :assign_default_role

  def assign_default_role
    self.add_role(:User) if self.roles.blank?
  end
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         
end
