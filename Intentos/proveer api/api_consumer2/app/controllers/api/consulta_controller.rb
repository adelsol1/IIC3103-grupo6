class Api::ConsultarController < ApplicationController
  http_basic_authenticate_with :name => "myfinance", :password => "credit123"

  skip_before_filter :authenticate_user! # we do not need devise authentication here
 # before_filter :fetch_user, :except => [:index, :create]

 #def fetch_user
 #   @user = User.find_by_id(params[:id])
 # end

  def index
    #@users = User.all
    @respuesta = Consulta.new(300,params[0])

    respond_to do |format|
      format.json { render json: @respuesta }
      
    end
  end

  
end