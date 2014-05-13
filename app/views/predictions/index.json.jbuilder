json.array!(@predictions) do |prediction|
  json.extract! prediction, :id, :question, :answer
  json.url prediction_url(prediction, format: :json)
end
