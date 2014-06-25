RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
     warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  config.authorize_with do
    redirect_to main_app.root_path unless warden.user.is_admin?
  end
  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  config.model 'Match' do
    list do
      field :id
      field :vs_title
      field :local_score
      field :visit_score
      field :time

    end
  end
  config.model 'Prediction' do
    list do
      field :id
      field :question
      field :real_answer
      field :question_type
      field :group
      field :points

    end
  end
  config.model 'Bet' do
    list do
      field :id
      field :match
      field :user
      field :display_bet
      field :updated_at
      field :points

    end
  end
  config.model 'Answer' do
    list do
      field :id
      field :user
      field :prediction
      field :prediction_question
      field :get_answer
      field :points
      field :updated_at

    end
  end
  config.model 'User' do
    list do
      field :id
      field :name
      field :email
      field :total_points
      field :sign_in_count
      field :bets
      field :answers

    end
  end
end
