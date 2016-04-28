class UsersController < ApplicationController
	require 'rest_client'

  USERNAME = "integra6" # needed to access the APi
  PASSWORD = "BSnt6txv" # needed to access the APi
  API_BASE_URL = "http://mare.ing.puc.cl/facturas" # base url of the API

  def index
  #	payload = params.to_json
  	
    uri = "#{API_BASE_URL}/" 



 	parametros={:oc=>"571c0c42d7edb6030071f243"}
	response=RestClient::Request.execute(:method => 'put', :url => uri,:headers =>{:Content_Type=>'application/json'}, :payload =>parametros.to_json)

   
    @ordencita = JSON.parse(response, :symbolize_names => true) 

  end

  def new

  end


end
