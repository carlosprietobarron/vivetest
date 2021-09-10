class CargosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def import
    data=safeParams.to_h["_json"]
    p data
    currentCargo = Cargo.new()
    currentCargo.requested_products=data.size
    productos = []
    data.each do |h|
      prod = Product.new
      prod.name = h["name"]
      prod.description = h["description"]
      vars = h["variants"]
      p
      p vars
      productos << prod unless vars.nil? || vars.empty?
    end

    p productos
    currentCargo.accepted_products = productos.length
    
    dataMsg = "total de productos #{currentCargo.requested_products} aceptados -> #{currentCargo.accepted_products} "
    puts(dataMsg)
    p data
    render json: { message: 'Importing data' }, status: 200
  end

  private

  def safeParams
    params.permit(
      "_json":[
        :name,
        :description,
        "variants":[
          :name,
          :precio
      ]
      ]
    )
  end
end
