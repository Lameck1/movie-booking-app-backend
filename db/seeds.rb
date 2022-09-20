# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "Kingsley", role: "admin")
User.create(username: "Busiwa", role: "admin")
User.create(username: "Amkam", role: "admin")

Movie.create(
    title: "Captain America and Winter Soldier",
    director: "Fidge",
    description: "As Steve Rogers adapts to the complexities of a contemporary world, he joins Natasha Romanoff and Sam Wilson in his mission to uncover the secret behind a deadly, mysterious assassin.",
    playing_time: "2.4hr",
    photo: "https://tvline.com/wp-content/uploads/2021/04/captain-america-and-winter-soldier-renewal.png?w=620",
    release_date: "06-20-2022",
    genre: "Action",
    ticket_price: "200.0",
    country: "United States",
    lead_cast: "Amkam"
)

Movie.create(
    title: "Avengers Endgame",
    director: "Fidge",
    description: "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.",
    playing_time: "2.4hr",
    photo: "https://www.cnet.com/a/img/resize/b7044df38fac94026d2ec2b50f52849cefb02abd/2019/04/25/9277c764-601d-4ab3-85f9-9c39d7f1ac5a/avengers-endgame-promo-crop.jpg?auto=webp&fit=crop&height=675&width=1200",
    release_date: "06-20-2022",
    genre: "Action",
    ticket_price: "200.0",
    country: "United States",
    lead_cast: "Kingsley"
)

Movie.create(
    title: "Doctor Strange in the Multiverse of Madness",
    director: "Fidge",
    description: "Dr Stephen Strange casts a forbidden spell that opens a portal to the multiverse. However, a threat emerges that may be too big for his team to handle",
    playing_time: "2.4hr",
    photo: "https://cdn.mos.cms.futurecdn.net/NJXQ8h3mUd9mhsh2m8xpba.jpg",
    release_date: "06-20-2022",
    genre: "Action",
    ticket_price: "200.0",
    country: "United States",
    lead_cast: "Doctor Strange"
)
