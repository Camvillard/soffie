class UsersBookPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def search_for_a_book?
    true
  end

  def results?
    true
  end

  def update?
    record.user == user
  end

  def update_completed_pages?
    true
  end

  def add_mood?
    true
  end

  def destroy?
    true
  end
end
