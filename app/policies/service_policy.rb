class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      raise
      scope.all
    end
  end

  def create?
    user.admin?
  end

  def show?
    true
  end

  def destroy?
    user.admin?
  end

end
