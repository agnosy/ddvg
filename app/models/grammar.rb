class Grammar < ActiveRecord::Base
  def to_vxml
     # TODO: Move type to grammar table.
     #<grammar type="application/x-gsl" src="#{self.src}"/>
    return <<-EOS
     <grammar type="application/grammar-xml" src="#{self.src}"/>
    EOS
  end
end
