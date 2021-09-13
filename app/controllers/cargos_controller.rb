class CargosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @cargos = Cargo.all
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
      
      if !(vars.nil? || vars.empty?)
        vars.each do |variant|
          v = Variant.new
          v.name = variant["name"]
          v.price = variant["precio"]
          prod.variants.build(name: v.name, price: v.price) if v.price > 0
          #prod.variants << v if v.price > 0
          puts "prod variants length #{prod.variants.length}" 
        end
      productos << prod if prod.variants.length > 0
      end

    end

    Product.import productos, recursive: true
    
    currentCargo.accepted_products = productos.length
    
    dataMsg = "total de productos #{currentCargo.requested_products} aceptados -> #{currentCargo.accepted_products} "
    puts(dataMsg)

    if currentCargo.save
      render json: { message: 'Importing data' }, status: 200
    else
      render json: { message: 'Import failed' }, status: 402 
    end

    
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
