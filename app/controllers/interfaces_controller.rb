class InterfacesController < ApplicationController
  def edit
    @interface = Interface.find(params[:id])
  end
  def update
    @interface = Interface.find(params[:id])

    respond_to do |format|
      if @interface.update_attributes(params[:interface])
        format.html { redirect_to root_path, notice: 'Interface was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
  
end
