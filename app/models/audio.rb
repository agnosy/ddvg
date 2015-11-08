class Audio < ActiveRecord::Base
  def to_vxml
    return "<audio src=\"#{self.src}\">#{self.text}</audio>"
  end
end
