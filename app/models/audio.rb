class Audio < ActiveRecord::Base
  def to_vxml
    l_src = self.src ? " src=\"/audios/#{self.src}\"" : ""
    return "<audio#{l_src}>#{self.text}</audio>"
  end
end
