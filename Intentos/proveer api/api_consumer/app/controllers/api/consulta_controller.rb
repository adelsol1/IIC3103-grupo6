class Api::ConsultaController < ApplicationController
 # http_basic_authenticate_with :name => "myfinance", :password => "credit123"

  #skip_before_filter :authenticate_user! # we do not need devise authentication here
 # before_filter :fetch_user, :except => [:index, :create]

 #def fetch_user
 #   @user = User.find_by_id(params[:id])
 # end

  def show
    #@users = User.all
    skux=params[:id]
    respuesta = {:sku=>skux , :stock=>40}

    render json: respuesta
      
  
  end

  
end