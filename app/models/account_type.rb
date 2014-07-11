# == Schema Information
#
# Table name: account_types
#
#  id         :integer          not null, primary key
#  name_id    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class AccountType < ActiveRecord::Base
  validates_presence_of :name_id
  validates_uniqueness_of :name_id
end
