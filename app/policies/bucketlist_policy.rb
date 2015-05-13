class BucketlistPolicy < ApplicationPolicy
  attr_reader :user, :list_item

  def initialize(user, list_item)
    @user = user
    @list_item = list_item
  end

  def create?
    user_signed_in?
  end

  def update?
    user_signed_in?
  end

  def destroy?
    user_signed_in?
  end


end