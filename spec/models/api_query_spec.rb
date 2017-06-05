require 'rails_helper'

RSpec.describe ApiQuery, type: :model do
  let(:params) { { title: "Inception" } }
  subject(:query) { described_class.new(params) }

  describe "#build_query" do

    context "when a title is specified" do
      it 'will make a custom query' do
      end
    end

    context "when no params are specified" do

    end    
  end
end
