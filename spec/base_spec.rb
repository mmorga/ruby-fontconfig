require 'minitest/autorun'
require 'test_helper'

describe Fontconfig do
  subject { Fontconfig }

  it "should be" do
    subject.wont_be_nil
  end

  it "version" do
    # puts "Lib version #{subject.library_version}"
    subject.library_version.must_be :>, 0
  end

  it "current_config" do
    subject.current_config.must_be_instance_of Fontconfig::Config
  end

end
