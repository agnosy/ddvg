class Transition < ActiveRecord::Base
  belongs_to :from_state, class_name: 'State'
  belongs_to :to_state, class_name: 'State'
end
