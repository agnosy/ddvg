class CampaignController < ApplicationController
  layout false

  def index
    #@campaign = Campaign.find(980190962)
    @campaign = Campaign.first
  end
end