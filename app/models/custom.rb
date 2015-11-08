class Custom < ActiveRecord::Base
  belongs_to :state
  belongs_to :next, class_name: "State"
  def to_vxml
    campaign_id = State.find(self.state).campaign
    return <<-EOS
    <block>
      <goto next="#{self.url}?next=/campaign/index/#{campaign_id}&amp;state=state#{self.next}"/>
    </block>
    EOS
  end
end
