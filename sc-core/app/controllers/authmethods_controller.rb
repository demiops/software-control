class AuthmethodsController < ApplicationController
  before_action :set_authmethod, only: [:show, :edit, :update, :destroy]

  # GET /authmethods
  # GET /authmethods.json
  def index
    @authmethods = Authmethod.all
  end

  # GET /authmethods/1
  # GET /authmethods/1.json
  def show
  end

  # GET /authmethods/new
  def new
    @authmethod = Authmethod.new
  end

  # GET /authmethods/1/edit
  def edit
  end

  # POST /authmethods
  # POST /authmethods.json
  def create
    @authmethod = Authmethod.new(authmethod_params)

    respond_to do |format|
      if @authmethod.save
        format.html { redirect_to @authmethod, notice: 'Authmethod was successfully created.' }
        format.json { render :show, status: :created, location: @authmethod }
      else
        format.html { render :new }
        format.json { render json: @authmethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authmethods/1
  # PATCH/PUT /authmethods/1.json
  def update
    respond_to do |format|
      if @authmethod.update(authmethod_params)
        format.html { redirect_to @authmethod, notice: 'Authmethod was successfully updated.' }
        format.json { render :show, status: :ok, location: @authmethod }
      else
        format.html { render :edit }
        format.json { render json: @authmethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authmethods/1
  # DELETE /authmethods/1.json
  def destroy
    @authmethod.destroy
    respond_to do |format|
      format.html { redirect_to authmethods_url, notice: 'Authmethod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authmethod
      @authmethod = Authmethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def authmethod_params
      params.require(:authmethod).permit(:uuid, :endpoint, :properties)
    end
end
