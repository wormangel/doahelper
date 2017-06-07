class CostumesController < ApplicationController
  before_action :set_costume, only: [:show, :edit, :update, :destroy]
  before_action :set_character

  # GET /costumes
  # GET /costumes.json
  def index
    @costumes = Costume.where(character: @character)
  end

  # GET /costumes/1
  # GET /costumes/1.json
  def show
  end

  # GET /costumes/new
  def new
    @costume = Costume.new
  end

  # GET /costumes/1/edit
  def edit
  end

  # POST /costumes
  # POST /costumes.json
  def create
    @costume = Costume.new(costume_params)
    @costume.character = @character

    respond_to do |format|
      if @costume.save
        format.html { redirect_to character_costume_path(@character, @costume), notice: 'Costume was successfully created.' }
        format.json { render :show, status: :created, location: @costume }
      else
        format.html { render :new }
        format.json { render json: @costume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costumes/1
  # PATCH/PUT /costumes/1.json
  def update
    respond_to do |format|
      if @costume.update(costume_params)
        format.html { redirect_to character_costume_path(@character, @costume), notice: 'Costume was successfully updated.' }
        format.json { render :show, status: :ok, location: @costume }
      else
        format.html { render :edit }
        format.json { render json: @costume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costumes/1
  # DELETE /costumes/1.json
  def destroy
    @costume.destroy
    respond_to do |format|
      format.html { redirect_to character_costumes_url(@character), notice: 'Costume was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costume
      @costume = Costume.find(params[:id])
    end

    def set_character
      @character = Character.find(params[:character_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costume_params
      params.require(:costume).permit(:number, :pic_ingame, :pic_official)
    end
end
