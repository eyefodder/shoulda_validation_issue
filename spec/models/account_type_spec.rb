# == Schema Information
#
# Table name: account_types
#
#  id         :integer          not null, primary key
#  name_id    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'



describe AccountType do
  let(:account_type){build(:account_type)}
  it 'should require a name' do
    expect(account_type).to validate_presence_of(:name_id)
  end
  xit 'should require a unique name' do
    expect(account_type).to validate_uniqueness_of(:name_id)
  end


end




