class WelcomeController < ApplicationController
  before_action :authorize

  def index
    @projects = Project.all
  end
end
