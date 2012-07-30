class ControleInterfaceController < ApplicationController
  def index
  end

  def estudar_controle_interface
    
    @controles_interfaces = ControleInterface.new
    @controles_interfaces = ControleInterface.all

    respond_to do |format|
      format.html
      format.json { render html: @controles_interfaces }
    end
  end
end
