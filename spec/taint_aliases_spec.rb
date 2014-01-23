require 'spec_helper'
require File.expand_path("../../lib/taint_aliases", __FILE__)

module TaintAliasesSpec

  describe "taint should be aliased to grundle and fleshy_fun_bridge" do

    before(:each) do
      @obj = Object.new
    end

    it "should be tainted with grundle" do
      @obj.grundle
      @obj.should be_tainted
    end

    it "should be tainted with fleshy_fun_bridge" do
      @obj.fleshy_fun_bridge
      @obj.should be_tainted
    end

  end

  describe "subclasses should inherit the aliases" do

    it "should work on Strings" do
      str = "I'm gettin' tainted"
      str.grundle
      str.should be_tainted
    end

    it "should work on Arrays" do
      ary = []
      ary.fleshy_fun_bridge
      ary.should be_tainted
    end

  end

end