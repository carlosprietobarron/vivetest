class CargosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def import
    puts "params"
    p params["_json"]
    data1=params["_json"][0]
    puts "data1"
    p data1
    render json: { message: 'Importing data' }, status: 200
  end

  private
end
