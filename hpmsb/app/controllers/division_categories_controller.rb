class DivisionCategoriesController < ApplicationController
  before_action :set_division_category, only: [:show, :edit, :update, :destroy]

  # GET /division_categories
  # GET /division_categories.json
  def index
    @division_categories = DivisionCategory.all
  end

  # GET /division_categories/1
  # GET /division_categories/1.json
  def show
  end

  # GET /division_categories/new
  def new
    @division_category = DivisionCategory.new
  end

  # GET /division_categories/1/edit
  def edit
  end

  # POST /division_categories
  # POST /division_categories.json
  def create
    @division_category = DivisionCategory.new(division_category_params)

    respond_to do |format|
      if @division_category.save
        format.html { redirect_to @division_category, notice: 'Division category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @division_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @division_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /division_categories/1
  # PATCH/PUT /division_categories/1.json
  def update
    respond_to do |format|
      if @division_category.update(division_category_params)
        format.html { redirect_to @division_category, notice: 'Division category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @division_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /division_categories/1
  # DELETE /division_categories/1.json
  def destroy
    @division_category.destroy
    respond_to do |format|
      format.html { redirect_to division_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_division_category
      @division_category = DivisionCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def division_category_params
      params.require(:division_category).permit(:name, :description, :Division_id)
    end
end
