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

  belongs_to :house,
    class_name: 'House',
    foreign_key: :house_id,
    primary_key: :id
end
