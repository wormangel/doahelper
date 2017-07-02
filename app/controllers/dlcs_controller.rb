class DlcsController < ApplicationController
  def index
    @dlcs = Dlc.all.order('release_date DESC')
  end

  def show
    @dlc = Dlc.first
  end

  def edit
  end


end
