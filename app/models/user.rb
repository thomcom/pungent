# == Schema Information
# Schema version: 20100926043831
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  repID      :string(255)
#  admin      :integer
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
end
