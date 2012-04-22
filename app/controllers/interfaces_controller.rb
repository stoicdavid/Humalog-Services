class InterfacesController < ApplicationController
  def edit
    @interface = Interface.find(params[:id])
  end
  
end
