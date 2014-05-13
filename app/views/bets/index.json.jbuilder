json.array!(@bets) do |bet|
  json.extract! bet, :id, :match_id, :user_id, :local_score, :visit_score
  json.url bet_url(bet, format: :json)
end
