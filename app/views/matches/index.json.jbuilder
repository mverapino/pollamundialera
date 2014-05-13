json.array!(@matches) do |match|
  json.extract! match, :id, :local, :visit, :local_score, :local_visit
  json.url match_url(match, format: :json)
end
