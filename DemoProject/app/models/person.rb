# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  house_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Person < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

end
