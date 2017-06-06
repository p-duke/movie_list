require 'rails_helper'

RSpec.describe ApiQuery, type: :model do
  let(:params) { { title: "Inception" } }
  subject(:query) { described_class.new(params) }

  describe "#build" do

    context "when a title is specified" do
      it 'will make a custom query' do
        expect(query).to receive(:run_movie_title_query).once

        query.search
      end

      it 'will return results' do
        query.search
        expect(query.results).to be_truthy
      end
    end

    context "when no params are specified" do
      let!(:query) { described_class.new() }

      it 'will make a popular movie query' do
        expect(query).to receive(:run_popular_movie_query).once

        query.search
      end

      it 'will return results' do
        query.search
        expect(query.results).to be_truthy
      end
    end    
  end
end
