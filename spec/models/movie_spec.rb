require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Movie model' do
    subject do
      Movie.new(
        title: 'Captain America and Winter Soldier',
        director: 'Fidge',
        description: 'As Steve Rogers adapts to the complexities of a contemporary world,',
        playing_time: '2hr',
        photo: 'https://tvline.com/wp-content/uploads/2021/04/captain-america-and-winter-soldier-renewal.png?w=620',
        release_date: '06-20-2022',
        genre: 'Action',
        ticket_price: 200.0,
        country: 'United States',
        lead_cast: 'Amkam'
      )
    end
    before { subject.save }

    context 'valid' do
      it 'movie to be valid' do
        expect(subject).to be_valid
      end

      it 'title of movie to be valid' do
        expect(subject.title).to eq 'Captain America and Winter Soldier'
      end

      it 'director of movie to be valid' do
        expect(subject.director).to eq 'Fidge'
      end

      it 'description of movie to be valid' do
        expect(subject.description).to eq 'As Steve Rogers adapts to the complexities of a contemporary world,'
      end

      it 'playing_time of movie to be valid' do
        expect(subject.playing_time).to eq '2hr'
      end

      it 'release_date of movie to be valid' do
        expect(subject.release_date).to eq '06-20-2022'
      end

      it 'genre of movie to be valid' do
        expect(subject.genre).to eq 'Action'
      end

      it 'ticket_price of movie to be valid' do
        expect(subject.ticket_price).to eq 200.0
      end

      it 'country of movie to be valid' do
        expect(subject.country).to eq 'United States'
      end

      it 'lead_cast of movie to be valid' do
        expect(subject.lead_cast).to eq 'Amkam'
      end
    end
  end
end
