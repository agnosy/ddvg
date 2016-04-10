class Audio < ActiveRecord::Base
  def to_vxml
    return "<audio src=\"/audios/#{self.src}\">#{self.text}</audio>"
  end
end
