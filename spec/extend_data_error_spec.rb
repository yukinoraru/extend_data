# coding: utf-8
require_relative 'spec_helper'
require_relative '../lib/extend_data'

describe "Case2" do

  before do
    ExtendData::reload
  end

  it "Object::EXTEND_DATA has to be a Hash" do
    EXTEND_DATA.class.to_s == "Hash"
  end

  it "All sections has to be nil" do
    EXTEND_DATA.each do |k,v|
      v.should == nil if k =~ /SECTION/
    end
  end

end

__END__
__SECTION1__
__SECTION2__
__SECTION3__
__SECTION4__
__SECTION5__
__SECTION6__
__SECTION7__
