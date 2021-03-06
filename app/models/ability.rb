class Ability
	include CanCan::Ability

	def initialize(user)
		user ||= User.new #guest

		if user.role? :admin
			can :manage, :all
		elsif user.role? :owner
			can :manage, [Restaurant, Dish]
		else
			can :read, [Restaurant, Dish]#:all
			can :manage, [Order, User]
		end
	end
end
