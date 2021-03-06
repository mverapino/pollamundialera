class AnswersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_answer, only: [ :update]




  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)
    @answer.user=current_user
    respond_to do |format|
      if @answer.save
        format.html { redirect_to play_path, :flash => { success: 'Apuesta guardada' }}
        #format.json { render action: 'show', status: :created, location: @answer }
      else
        format.html { redirect_to play_path, :flash => { error: 'Respuesta no se pudo guardar' } }
        #format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to play_path, notice: 'Respuesta actualizada: '}
        #format.json { head :no_content }
      else
        format.html { redirect_to play_path, error: 'Respuesta no se pudo guardar'}
        #format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end



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
