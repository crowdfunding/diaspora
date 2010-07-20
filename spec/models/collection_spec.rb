require File.dirname(__FILE__) + '/../spec_helper'

describe Collection do
  before do
    @user = Factory.create(:user)
    @collection = Collection.new(:name => "test collection")
  end

  it 'should belong to a person' do
    person = Factory.create(:person)
    @collection.person = person
    @collection.valid?.should be true
    @collection.save
    person.collections.count.should == 1
  end

  it 'should require a name' do
    @collection.name = "test collection"
    @collection.valid?.should be true

    @collection.name = nil
    @collection.valid?.should be false
  end

  it 'should contain photos' do

  end



end
