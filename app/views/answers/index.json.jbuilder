json.array!(@answers) do |answer|
  json.extract! answer, :id, :user_id, :prediction_id, :answer
  json.url answer_url(answer, format: :json)
end
