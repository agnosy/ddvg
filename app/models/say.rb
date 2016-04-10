class Say < ActiveRecord::Base
  belongs_to :state
  belongs_to :audio

  def to_vxml
    return <<-EOS
    <block>
      <prompt>
        #{Audio.find(self.audio.id).to_vxml}
      </prompt>
    </block>
    EOS
  end
end
