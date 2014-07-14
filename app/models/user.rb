class User < ActiveRecord::Base
has_paper_trail

# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable
def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
  data = access_token.info
  user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
  if user
  return user
  else
  registered_user = User.where(:email => access_token.info.email).first
  if registered_user
  return registered_user
  else
  user = User.create(name: data["name"],
      provider:access_token.provider,
      email: data["email"],
      uid: access_token.uid ,
      password: Devise.friendly_token[0,20],
      )
  end
  end
  end    
  def admin?
  self.role == "admin"
  end

  def show_name
  "#{self.email} [#{self.role_name}]"
  end 

  def role_name
  return "管理员" if admin?
  return "普通用户"
  end
  end
