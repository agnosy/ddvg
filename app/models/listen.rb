class Listen < ActiveRecord::Base
  belongs_to :state
  belongs_to :prompt, class_name: "Audio"
  belongs_to :help, class_name: "Audio"
  belongs_to :noinput, class_name: "Audio"
  belongs_to :nomatch, class_name: "Audio"
  belongs_to :grammar

  def to_vxml
    field_type = (self.inputtype.nil?) ? "" : " type=\"#{self.inputtype}\""
    grammar_element = (self.inputtype.nil?) ? Grammar.find(self.grammar).to_vxml : ""
    return <<-EOS
    <field name="state#{self.state.id}field1"#{field_type}>
      #{grammar_element}

      <prompt>
        #{Audio.find(self.prompt).to_vxml}
        <break size="medium"/>
      </prompt>

      <help>
        #{Audio.find(self.help).to_vxml}
        <reprompt/>
      </help>

      <catch event="noinput">
        #{Audio.find(self.noinput).to_vxml}
        <reprompt/>
      </catch>

      <catch event="nomatch">
        #{Audio.find(self.nomatch).to_vxml}
        <reprompt/>
      </catch>

      <filled>
        You said <value expr="state#{self.state.id}field1"/>
      </filled>
    </field>
    EOS
  end
end
