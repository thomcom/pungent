# == Schema Information
# Schema version: 20100926043831
#
# Table name: jobs
#
#  id          :integer         not null, primary key
#  jobID       :string(255)
#  rep         :string(255)
#  name        :string(255)
#  buyer       :string(255)
#  booked      :string(255)
#  date        :string(255)
#  invoice     :string(255)
#  shipped     :string(255)
#  margin      :string(255)
#  commissions :string(255)
#  paid        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Job < ActiveRecord::Base
end
