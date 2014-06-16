class AlumnisController < ApplicationController
  before_action :set_alumni, only: [:show, :edit, :update, :destroy]

  # GET /alumnis
  # GET /alumnis.json
  def index
    @alumnis = Alumni.all.order('created_at DESC').paginate(page: params[:page], per_page: 5)
  end

  # GET /alumnis/1
  # GET /alumnis/1.json
  def show
  end

  # GET /alumnis/new
  def new
    @alumni = Alumni.new
  end

  # GET /alumnis/1/edit
  def edit
  end

  # POST /alumnis
  # POST /alumnis.json
  def create
    @alumni = Alumni.new(alumni_params)

    respond_to do |format|
      if @alumni.save
        format.html { redirect_to @alumni, notice: 'Alumni was successfully created.' }
        format.json { render action: 'show', status: :created, location: @alumni }
      else
        format.html { render action: 'new' }
        format.json { render json: @alumni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumnis/1
  # PATCH/PUT /alumnis/1.json
  def update
    respond_to do |format|
      if @alumni.update(alumni_params)
        format.html { redirect_to @alumni, notice: 'Alumni was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @alumni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumnis/1
  # DELETE /alumnis/1.json
  def destroy
    @alumni.destroy
    respond_to do |format|
      format.html { redirect_to alumnis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumni
      @alumni = Alumni.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumni_params
      params.require(:alumni).permit(:alumni_id, :full_name, :place_of_birth, :birthday, :ksb_address, :sub_district, :address, :gender, :email, :phone, :pin_bb, :college, :major, :avatar)
    end
end
