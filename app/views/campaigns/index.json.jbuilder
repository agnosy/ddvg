json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :description, :start_state_id
  json.url campaign_url(campaign, format: :json)
end
