class ConstructorresultsController < ApplicationController
  before_action :set_constructorresult, only: [:show, :edit, :update, :destroy]

  # GET /constructorresults
  # GET /constructorresults.json
  def index
    @constructorresults = Constructorresult.all
  end

  # GET /constructorresults/1
  # GET /constructorresults/1.json
  def show
  end

  # GET /constructorresults/new
  def new
    @constructorresult = Constructorresult.new
  end

  # GET /constructorresults/1/edit
  def edit
  end

  # POST /constructorresults
  # POST /constructorresults.json
  def create
    @constructorresult = Constructorresult.new(constructorresult_params)

    respond_to do |format|
      if @constructorresult.save
        format.html { redirect_to @constructorresult, notice: 'Constructorresult was successfully created.' }
        format.json { render :show, status: :created, location: @constructorresult }
      else
        format.html { render :new }
        format.json { render json: @constructorresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constructorresults/1
  # PATCH/PUT /constructorresults/1.json
  def update
    respond_to do |format|
      if @constructorresult.update(constructorresult_params)
        format.html { redirect_to @constructorresult, notice: 'Constructorresult was successfully updated.' }
        format.json { render :show, status: :ok, location: @constructorresult }
      else
        format.html { render :edit }
        format.json { render json: @constructorresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constructorresults/1
  # DELETE /constructorresults/1.json
  def destroy
    @constructorresult.destroy
    respond_to do |format|
      format.html { redirect_to constructorresults_url, notice: 'Constructorresult was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constructorresult
      @constructorresult = Constructorresult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constructorresult_params
      params.require(:constructorresult).permit(:race_id, :constructor_id, :points)
    end
end
