class PlaygroundsController < ApplicationController
  before_action :set_playground, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # GET /playgrounds
  # GET /playgrounds.json
  def index
    @search = Playground.search(params[:q])
    @playgrounds = @search.result
  end


  # GET /playgrounds/1
  # GET /playgrounds/1.json
  def show
  end

  # GET /playgrounds/new
  def new
    @playground = Playground.new
  end

  # GET /playgrounds/1/edit
  def edit
  end

  # POST /playgrounds
  # POST /playgrounds.json
  def create
    @playground = Playground.new(playground_params)

    respond_to do |format|
      if @playground.save
        format.html { redirect_to @playground, notice: 'Playground was successfully created.' }
        format.json { render :show, status: :created, location: @playground }
      else
        format.html { render :new }
        format.json { render json: @playground.errors, status: :unprocessable_entity }
      end 
    end
  end

  # PATCH/PUT /playgrounds/1
  # PATCH/PUT /playgrounds/1.json
  def update
    respond_to do |format|
      if @playground.update(playground_params)
        format.html { redirect_to @playground, notice: 'Playground was successfully updated.' }
        format.json { render :show, status: :ok, location: @playground }
      else
        format.html { render :edit }
        format.json { render json: @playground.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playgrounds/1
  # DELETE /playgrounds/1.json
  def destroy
    @playground.destroy
    respond_to do |format|
      format.html { redirect_to playgrounds_url, notice: 'Playground was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playground
      @playground = Playground.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playground_params
      params.require(:playground).permit(:address, :zipcode, :indoor, :outdoor, :restrooms, :food, :restaurant, :fun, :clean, :safety, :photo)
    end
end
