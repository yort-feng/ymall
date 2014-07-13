class User < ActiveRecord::Base
  has_paper_trail

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  def admin?
    self.role == "admin"
  end

  def show_name
    "#{self.email} [#{self.role_name}]$"
  end 

  def role_name
    return "管理员" if admin?
    return "普通用户"
  end
end
