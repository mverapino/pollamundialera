class AnswersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_answer, only: [:show, :edit, :update]

  # GET /answers
  # GET /answers.json
  #def index
  #  @answers = Answer.all
  #end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)
    @answer.user=current_user
    respond_to do |format|
      if @answer.save
        format.html { redirect_to play_path, notice: 'Respuesta guardada'}
        #format.json { render action: 'show', status: :created, location: @answer }
      else
        format.html { redirect_to play_path, error: 'Respuesta no se pudo guardar' }
        #format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to play_path, notice: 'Respuesta actualizada: ' + 2.to_s }
        #format.json { head :no_content }
      else
        format.html { redirect_to play_path, error: 'Respuesta no se pudo guardar'}
        #format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  #def destroy
  #  @answer.destroy
  #  respond_to do |format|
  #    format.html { redirect_to answers_url }
  #    format.json { head :no_content }
  #  end
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:prediction_id, :answer)
    end
end
