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
        can :manage, Customer
        can :manage, D3sInformation
        can :manage, Engagement
        can :manage, Facility
        can :manage, ModuleTheme
        can :manage, Origine
        can :manage, Popup
        can :manage, Producer
        can :manage, Product
        can :manage, Producter
        can :manage, SliderShow
        can :manage, SliderImage
      end
    end
  end
end
