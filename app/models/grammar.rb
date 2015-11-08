class Grammar < ActiveRecord::Base
  def to_vxml
    return <<-EOS
     <grammar type="application/x-gsl" src="/static/vxml/grammars/#{self.src}"/>
    EOS
  end
end
