class ElderMembersController < ApplicationController
  before_action :set_elder_member, only: [:show, :edit, :update, :destroy]

  # GET /elder_members
  # GET /elder_members.json
  def index
    @elder_members = ElderMember.all.order('created_at DESC').paginate(page: params[:page], per_page: 10)
  end

  # GET /elder_members/1
  # GET /elder_members/1.json
  def show
  end

  # GET /elder_members/new
  def new
    @elder_member = ElderMember.new
  end

  # GET /elder_members/1/edit
  def edit
  end

  # POST /elder_members
  # POST /elder_members.json
  def create
    @elder_member = ElderMember.new(elder_member_params)

    respond_to do |format|
      if @elder_member.save
        format.html { redirect_to @elder_member, notice: 'Elder member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @elder_member }
      else
        format.html { render action: 'new' }
        format.json { render json: @elder_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elder_members/1
  # PATCH/PUT /elder_members/1.json
  def update
    respond_to do |format|
      if @elder_member.update(elder_member_params)
        format.html { redirect_to @elder_member, notice: 'Elder member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @elder_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elder_members/1
  # DELETE /elder_members/1.json
  def destroy
    @elder_member.destroy
    respond_to do |format|
      format.html { redirect_to elder_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elder_member
      @elder_member = ElderMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elder_member_params
      params.require(:elder_member).permit(:elder_member_id, :name, :place_of_birth, :birthday, :ksb_address, :sub_district, :jogja_address, :profession, :experience, :avatar)
    end
end
