class CloudcredentialsController < ApplicationController
  before_action :set_cloudcredential, only: [:show, :edit, :update, :destroy]

  # GET /cloudcredentials
  # GET /cloudcredentials.json
  def index
    @cloudcredentials = Cloudcredential.all
  end

  # GET /cloudcredentials/1
  # GET /cloudcredentials/1.json
  def show
  end

  # GET /cloudcredentials/new
  def new
    @cloudcredential = Cloudcredential.new
  end

  # GET /cloudcredentials/1/edit
  def edit
  end

  # POST /cloudcredentials
  # POST /cloudcredentials.json
  def create
    @cloudcredential = Cloudcredential.new(cloudcredential_params)

    respond_to do |format|
      if @cloudcredential.save
        format.html { redirect_to @cloudcredential, notice: 'Cloudcredential was successfully created.' }
        format.json { render :show, status: :created, location: @cloudcredential }
      else
        format.html { render :new }
        format.json { render json: @cloudcredential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloudcredentials/1
  # PATCH/PUT /cloudcredentials/1.json
  def update
    respond_to do |format|
      if @cloudcredential.update(cloudcredential_params)
        format.html { redirect_to @cloudcredential, notice: 'Cloudcredential was successfully updated.' }
        format.json { render :show, status: :ok, location: @cloudcredential }
      else
        format.html { render :edit }
        format.json { render json: @cloudcredential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloudcredentials/1
  # DELETE /cloudcredentials/1.json
  def destroy
    @cloudcredential.destroy
    respond_to do |format|
      format.html { redirect_to cloudcredentials_url, notice: 'Cloudcredential was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloudcredential
      @cloudcredential = Cloudcredential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cloudcredential_params
      params.require(:cloudcredential).permit(:uuid, :properties)
    end
end
