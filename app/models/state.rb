class State < ActiveRecord::Base
  belongs_to :campaign
  def self.inheritance_column
	nil
  end

  def to_vxml
    if self.type == "say"
      return Say.find_by(state: self.id).to_vxml
    elsif self.type == "break"
        return "<block><break size=\"medium\"/></block>"
    elsif self.type == "listen"
      return Listen.find_by(state: self.id).to_vxml
    elsif self.type == "custom"
      return Custom.find_by(state: self.id).to_vxml
    else
      return <<-EOS
        <block>
          <prompt>
            <audio>unsupported state type</audio>
          </prompt>
        </block>
      EOS
    end
  end
end
