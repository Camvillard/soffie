class UsersBookPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all

  # CATEGORIES_LIST.each do |cat| {
  #   users_book.include?(cat)
  # }


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
end
