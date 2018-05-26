class AuthcredentialsController < ApplicationController
  before_action :set_authcredential, only: [:show, :edit, :update, :destroy]

  # GET /authcredentials
  # GET /authcredentials.json
  def index
    @authcredentials = Authcredential.all
  end

  # GET /authcredentials/1
  # GET /authcredentials/1.json
  def show
  end

  # GET /authcredentials/new
  def new
    @authcredential = Authcredential.new
  end

  # GET /authcredentials/1/edit
  def edit
  end

  # POST /authcredentials
  # POST /authcredentials.json
  def create
    @authcredential = Authcredential.new(authcredential_params)

    respond_to do |format|
      if @authcredential.save
        format.html { redirect_to @authcredential, notice: 'Authcredential was successfully created.' }
        format.json { render :show, status: :created, location: @authcredential }
      else
        format.html { render :new }
        format.json { render json: @authcredential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authcredentials/1
  # PATCH/PUT /authcredentials/1.json
  def update
    respond_to do |format|
      if @authcredential.update(authcredential_params)
        format.html { redirect_to @authcredential, notice: 'Authcredential was successfully updated.' }
        format.json { render :show, status: :ok, location: @authcredential }
      else
        format.html { render :edit }
        format.json { render json: @authcredential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authcredentials/1
  # DELETE /authcredentials/1.json
  def destroy
    @authcredential.destroy
    respond_to do |format|
      format.html { redirect_to authcredentials_url, notice: 'Authcredential was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authcredential
      @authcredential = Authcredential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def authcredential_params
      params.require(:authcredential).permit(:uuid, :properties)
    end
end
