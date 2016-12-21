class ParticipantTeam < ActiveRecord::Base
  belongs_to :tournament
  has_many :teammates
end
