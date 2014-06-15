class MatchesController < ApplicationController
  def results
    @matches = Match.all.order(:time)
  end
end
