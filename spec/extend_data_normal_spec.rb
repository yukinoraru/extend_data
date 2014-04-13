# coding: utf-8
require_relative 'spec_helper'
require_relative '../lib/extend_data'

describe "Case1" do

  before do
    ExtendData::reload
  end

  it "Object::EXTEND_DATA has to be a Hash" do
    EXTEND_DATA.class.to_s == "Hash"
  end

  it "Object::EXTEND_DATA has multiple section data" do
    EXTEND_DATA["TEST1"].should == "test1\ntest1\ntest1\n\n"
    EXTEND_DATA["TEST-2"].should == "test2\n\n\n\n"
    EXTEND_DATA["TEST_3"].should  =~ /\n+/
    EXTEND_DATA["TEST___4"].length.should > 0
  end

end

__END__
end
__TEST1__
test1
test1
test1

__TEST-2__
test2



__TEST_3__


__TEST___4__
 __NOT_A_SECTION__
    __NOT_A_SECTION__
           __NOT_A_SECTION__
 __NOT_A_SECTION__















