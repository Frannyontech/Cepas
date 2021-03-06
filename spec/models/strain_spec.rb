require 'rails_helper'

RSpec.describe Strain, type: :model do
  it 'strains cant have the same name' do
      strain = Strain.create(:name)
      expect(strain).to be_invalid
  end
  it 'strain with blank name is invalid' do
    strain = Strain.new(name: "")
    expect(strain).to be_invalid
  end
  it 'strain without name is invalid' do
    strain = Strain.new(name: nil)
    expect(strain).to be_invalid
  end 
  it 'strain is valid with a name' do
    strain = Strain.new(name: "Carmenere")
    expect(strain).to be_valid
  end
end
