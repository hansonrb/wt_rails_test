class CompaniesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Company.all
  end

  def create
  	render json: Company.create(company_params)
  end

  private

  def company_params
  	params.require(:company).permit(:name)
  end
end
