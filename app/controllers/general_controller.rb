class GeneralController < ApplicationController
  def index
    @employees = Employee.order(:name)
  end
end
