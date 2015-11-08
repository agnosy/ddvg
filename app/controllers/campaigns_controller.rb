class CampaignsController < ApplicationController
  def index
    @cid = params[:id]
    if @cid.nil? || @cid.empty?
      @campaign = Campaign.first
    else
      @campaign = Campaign.find(@cid)
    end
    @states = State.where(campaign: @campaign)
  end
end
