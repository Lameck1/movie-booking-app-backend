require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'Reservation model' do
    user = User.create!(username: 'Kingsley', role: 'admin')
    movie = Movie.create!(
      title: 'Captain America and Winter Soldier',
      director: 'Fidge',
      description: 'As Steve Rogers adapts to the complexities of a contemporary world,',
      playing_time: '2hr',
      photo: 'https://tvline.com/wp-content/uploads/2021/04/captain-america-and-winter-soldier-renewal.png?w=620',
      release_date: '06-20-2022',
      genre: 'Action',
      ticket_price: '200.0',
      country: 'United States',
      lead_cast: 'Amkam'
    )
    subject { Reservation.new(user_id: user.id, movie_id: movie.id, location: 'United States', date: '06-20-2022') }
    before { subject.save! }

    context 'valid' do
      it 'movie to be valid' do
        expect(subject).to be_valid
      end

      it 'title of movie to be valid' do
        expect(subject.location).to eq 'United States'
      end

      it 'release_date of movie to be valid' do
        expect(subject.date).to eq '06-20-2022'
      end

      it 'user_id of movie to be valid' do
        expect(subject.user_id).to eq user.id
      end

      it 'user_id of movie to be valid' do
        expect(subject.movie_id).to eq movie.id
      end
    end
  end
end
