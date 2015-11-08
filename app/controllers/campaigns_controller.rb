class CampaignsController < ApplicationController
  def index
    @campaign = Campaign.first
    @states = State.where(campaign: @campaign)
  end
end
