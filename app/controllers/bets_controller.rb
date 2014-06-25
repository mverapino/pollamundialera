class BetsController < ApplicationController
  before_action :set_bet, only: [:show, :update]
  before_action :authenticate_user!

  def next_bets
    @matches=Match.where("Date(time) = ?", Date.today)

    @users= User.all.map do |u|
      user_bets=[]
      @matches.each do |m|
         b =u.bets.where(match:m).first.nil? ?  Bet.new(match:m, user:u) : u.bets.where(match:m).first

        user_bets<< b
      end
      [u,user_bets]
    end

  end
  def all_bets
  @users= User.all

  end
  # POST /bets
  # POST /bets.json
  def create
    @bet = Bet.new(bet_params)
    @bet.user = current_user
    respond_to do |format|
      if @bet.save
        format.html { redirect_to play_path, notice: 'Apuesta guardada'}
        #format.json { render action: 'show', status: :created, location: @bet }
      else
        format.html { redirect_to play_path, :flash => { error: 'Apuesta no se pudo guardar' }}
        #format.json { render json: @bet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bets/1
  # PATCH/PUT /bets/1.json
  def update
    respond_to do |format|
      if @bet.update(bet_params)
        format.html { redirect_to play_path, notice: 'Apuesta guardada'}
        #format.json { head :no_content }
      else
        format.html { redirect_to play_path, :flash => { error: 'Apuesta no se pudo guardar' }}
        #format.json { render json: @bet.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bet
      @bet = Bet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bet_params
      params.require(:bet).permit(:match_id, :user_id, :local_score, :visit_score)
    end
end
