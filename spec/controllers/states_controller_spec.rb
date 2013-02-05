# encoding: utf-8
require "spec_helper"

describe StatesController do

  let(:state_list) {
    [stub_model(State, id: 1, name: "São Paulo"),
     stub_model(State, id: 2, name: "Rio de Janeiro")]
  }

  before do
    State.stub(:all).and_return(state_list)
    @request.env["HTTP_ACCEPT"] = "application/json"
  end

  describe "#show" do
    it "should return all states" do
      State.should_receive(:all)

      get :show
    end

    it "responds json" do
      get :show

      expect(response.body).to eq state_list.to_json(root: false)
    end

  end
end

