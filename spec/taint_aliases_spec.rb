require 'spec_helper'
require File.expand_path("../../lib/taint_aliases", __FILE__)

module TaintAliasesSpec

  describe "taint should be aliased to grundle and fleshy_fun_bridge" do

    before(:each) do
      @obj = Object.new
    end

    TaintAliases::TAINT_ALIASES.each do |a|
      suffix = 'aeiou'[a[-1]] ? 'd' : 'ed'
      query  = a + suffix + "?"
        
      it "should be tainted with #{a}" do
        @obj.public_send a
        @obj.should be_tainted
      end

      it "should be untainted with un#{a}" do
        @obj.public_send "un" + a
        @obj.should_not be_tainted
      end

      it "should be queryable with #{query}" do
        @obj.public_send(query).should be_false
        @obj.public_send a
        @obj.public_send(query).should be_true
      end
    end
  end

  describe "subclasses should inherit the aliases" do
    TaintAliases::TAINT_ALIASES.each do |a|
      it "should work on Strings" do
        str = "I'm gettin' tainted"
        str.public_send a
        str.should be_tainted
      end

      it "should work on Arrays" do
        ary = []
        ary.public_send a
        ary.should be_tainted
      end
    end
  end

end
