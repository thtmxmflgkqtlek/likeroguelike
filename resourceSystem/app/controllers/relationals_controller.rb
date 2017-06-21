class RelationalsController < ApplicationController
  before_action :set_relational, only: [:show, :edit, :update, :destroy]
  before_filter :retrieve_rental
  # GET /relationals
  # GET /relationals.json
  def index
    @relationals = Relational.all
  end

  # GET /relationals/1
  # GET /relationals/1.json
  def show
  end

  # GET /relationals/new
  def new
    @relational = Relational.new
  end

  # GET /relationals/1/edit
  def edit
  end

  # POST /relationals
  # POST /relationals.json
  def create
    @relational = Relational.new(relational_params)

    respond_to do |format|
      if @relational.save
        format.html { redirect_to rental_relationals_path(@rental), notice: '資材貸し出しの予約を完了しました！！' }
        format.json { render :show, status: :created, location: @relational }
      else
        format.html { render :new }
        format.json { render json: @relational.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relationals/1
  # PATCH/PUT /relationals/1.json
  def update
    respond_to do |format|
      if @relational.update(relational_params)
        format.html { redirect_to rental_relationals_path(@rental), notice: '予約の変更が完了しました！！' }
        format.json { render :show, status: :ok, location: @relational }
      else
        format.html { render :edit }
        format.json { render json: @relational.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationals/1
  # DELETE /relationals/1.json
  def destroy
    @relational.destroy
    respond_to do |format|
      format.html { redirect_to rental_relationals_url(@rental), notice: '予約の削除が完了しました！！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relational
      @relational = Relational.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relational_params
      params.require(:relational).permit(:u_id, :r_id, :start_day, :end_day)
    end

    def retrieve_rental
      unless @rental = Rental.where(:id => params[:rental_id]).first
        redirect_to user_path(@login_url)
      end
    end

    def retrieve_user
      unless @user = User.where(:id => params[:user_id]).first and (@login_user.adm? or @login_user.id == @user.id)
        redirect_to user_path(@login_user) end
      end
end
