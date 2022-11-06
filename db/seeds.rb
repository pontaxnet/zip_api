# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
require "csv"

Zip.destroy_all

CSV.foreach(Dir.glob("#{Rails.root}/x-ken-all.csv").first, encoding: 'Shift_JIS:UTF-8') do |row|
  #p row
  Zip.create(
    zip_code: row[2],
    prefecture_kana: row[3],
    city_kana: row[4],
    town_kana: row[5],
    prefecture_kanji: row[6],
    city_kanji: row[7],
    town_kanji: row[8]
  )
end

