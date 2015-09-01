class ApiController < ApplicationController
  respond_to :json

  def list_catalog
    catalogs = Catalog.all

    respond_with catalogs
  end

  def list_product
    catalog = Catalog.find params[:catalog_id]
    products = catalog.products

    respond_with products
  end
end
