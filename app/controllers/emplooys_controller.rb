class EmplooysController < ApplicationController
  before_action :set_emplooy, only: [:show, :edit, :update, :destroy]

  # GET /emplooys
  # GET /emplooys.json
  def index
    @emplooys = Emplooy.all
  end

  # GET /emplooys/1
  # GET /emplooys/1.json
  def show
  end

  # GET /emplooys/new
  def new
    @emplooy = Emplooy.new
  end

  # GET /emplooys/1/edit
  def edit
  end

  # POST /emplooys
  # POST /emplooys.json
  def create
    @emplooy = Emplooy.new(emplooy_params)

    respond_to do |format|
      if @emplooy.save
        format.html { redirect_to @emplooy, notice: 'Emplooy was successfully created.' }
        format.json { render :show, status: :created, location: @emplooy }
      else
        format.html { render :new }
        format.json { render json: @emplooy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emplooys/1
  # PATCH/PUT /emplooys/1.json
  def update
    respond_to do |format|
      if @emplooy.update(emplooy_params)
        format.html { redirect_to @emplooy, notice: 'Emplooy was successfully updated.' }
        format.json { render :show, status: :ok, location: @emplooy }
      else
        format.html { render :edit }
        format.json { render json: @emplooy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emplooys/1
  # DELETE /emplooys/1.json
  def destroy
    @emplooy.destroy
    respond_to do |format|
      format.html { redirect_to emplooys_url, notice: 'Emplooy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emplooy
      @emplooy = Emplooy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emplooy_params
      params.require(:emplooy).permit(:name, :number, :sex, :birthday, :description)
    end
end
