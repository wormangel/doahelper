class DlcsController < ApplicationController
  def index
    @dlcs = Dlc.all
  end

  def show
    @dlc = Dlc.first
  end

  def edit
  end

  
end
