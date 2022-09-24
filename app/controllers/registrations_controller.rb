class RegistrationsController < ApplicationController
  before_action :logged_in?, only: ['new']

  def new
    @user = User.new
  end
end
