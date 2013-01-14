class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    else
        if user.has_role? :site_staff
            can :manage, :all
            cannot :destroy, User
            cannot :destroy, ParkingCompany
        end

        if user.has_role? :site_admin
            can :manage, :all
            cannot :destroy, User

        end
        if user.has_role? :company_admin
            can :manage, ParkingBranch, :user_id => user.id
            can :manage, ParkingCompany, :user_id => user.id
        end

        if user.has_role? :company_staff
            can :manage, ParkingBranch, :user_id => user.id
            can :manage, ParkingCompany, :user_id => user.id
            can :manage, Booking
            can :manage, Car
            can :manage, Service
            can :read, Transaction
            cannot :destroy, ParkingCompany
            cannot :destroy, Car
        end

        if user.has_role? :customer
            can :read, ParkingCompany
            can :read, ParkingBranch
            can :read, Transaction, :user_id => user.id
            can :create, Booking
            can :update, Booking, :user_id => user.id
            can :destroy, Booking, :user_id => user.id
        end

        #guest ability
        can :read, ParkingCompany
        can :read, ParkingBranch
    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
