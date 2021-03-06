class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    @products = Product.all

    render json: @products, status: 200
  end

  # GET /products/1
  def show
    @product = Product.find(params[:id])
    render json: @product, status: 200
  end

  # POST /products
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
  end