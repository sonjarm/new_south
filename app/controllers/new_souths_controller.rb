class NewSouthsController < ApplicationController
  before_action :set_new_south, only: [:show, :edit, :update, :destroy]

  # GET /new_souths
  # GET /new_souths.json
  def index
    @new_souths = NewSouth.all
  end

  # GET /new_souths/1
  # GET /new_souths/1.json
  def show
  end

  # GET /new_souths/new
  def new
    @new_south = NewSouth.new
  end

  # GET /new_souths/1/edit
  def edit
  end

  # POST /new_souths
  # POST /new_souths.json
  def create
    @new_south = NewSouth.new(new_south_params)

    respond_to do |format|
      if @new_south.save
        format.html { redirect_to @new_south, notice: 'New south was successfully created.' }
        format.json { render :show, status: :created, location: @new_south }
      else
        format.html { render :new }
        format.json { render json: @new_south.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_souths/1
  # PATCH/PUT /new_souths/1.json
  def update
    respond_to do |format|
      if @new_south.update(new_south_params)
        format.html { redirect_to @new_south, notice: 'New south was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_south }
      else
        format.html { render :edit }
        format.json { render json: @new_south.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_souths/1
  # DELETE /new_souths/1.json
  def destroy
    @new_south.destroy
    respond_to do |format|
      format.html { redirect_to new_souths_url, notice: 'New south was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_south
      @new_south = NewSouth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_south_params
      params.require(:new_south).permit(:title, :notes, :due, :done)
    end
end
