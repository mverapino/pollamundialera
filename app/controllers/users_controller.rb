class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:new]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def play
    #@predictions = Prediction.all.order(:id)
    #@questions = Prediction.all.order(:id).map {|a| [a, current_user.answers.where(prediction_id: a).first]}
    @questions = Prediction.all.order(:id).map {|a| [a, current_user.answers.where(prediction_id: a).first.nil? ? Answer.new(prediction:a,user:current_user) : current_user.answers.where(prediction_id: a).first]}
    @bets = Match.all.order(:time).map {|a| [a, current_user.bets.where(match:a).first.nil? ? Bet.new(match:a, user:current_user) : current_user.bets.where(match:a).first]}
    we=2
  end
  def index
    @users = User.all
  end
  # GET /users/1
  # GET /users/1.json
  def show
    @questions = Prediction.all.order(:id).map {|a| [a, current_user.answers.where(prediction_id: a).first.nil? ? nil : current_user.answers.where(prediction_id: a).first]}
    @bets = Match.all.order(:time).map {|a| [a, current_user.bets.where(match:a).first.nil? ? nil : current_user.bets.where(match:a).first]}
    we=2
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params[:user]
    end
end
