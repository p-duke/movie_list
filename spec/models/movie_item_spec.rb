require 'rails_helper'

RSpec.describe MovieItem, type: :model do
  let(:params) { { 
    title: "Warrior Burrito",
    plot: "A burrito that fights the forces of evil",
    imdb_id: 12203,
    user_id: 1,
    year: 1987,
    director: "Francis Ford CocaCola",
    actors: 'Kevin Spacey, Bob Barker',
    rated: 'PG',
    genre: 'Action',
    runtime: '1h 21min',
    rotten_tomatoes: '78%'
  } }

  subject { described_class.new(params) }

  describe "associations" do
    it { should belong_to(:user) }
  end

  describe "validations" do
    it { should be_valid }

    context 'when the user_id is not present' do
      before { subject.user_id = nil }

      it { should_not be_valid }
    end

    context 'when primary attributes are not present' do
      before do
        subject.title = nil 
        subject.year = nil 
        subject.director = nil
        subject.rated = nil
        subject.genre = nil
      end

      it { should_not be_valid }
    end
  end
end
