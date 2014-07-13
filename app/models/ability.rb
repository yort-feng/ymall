class Ability
  include CanCan::Ability

  def initialize(user)
  can :read,all
  if user && user.admin?
     can :manager, :all
  end
end
