# encoding: utf-8
require "spec_helper"

describe StatesController do

  let(:state_list) { ["São Paulo", "Rio de Janeiro"] }

  before do
    State.stub(:all).and_return(state_list)
  end

  describe "#show" do
    it "should return all states" do
      State.should_receive(:all)

      get :show
    end
  end
end

