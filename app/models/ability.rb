class Ability
  include CanCan::Ability

  def initialize(user, controller_namespace)
    user ||= User.new

    if controller_namespace == "admin"
      case user.role
      when 'admin'
        can :manage, :all
      when 'mod'
        can [:read, :edit], User, role: 1, id: user.id
      end
    end
  end
end
