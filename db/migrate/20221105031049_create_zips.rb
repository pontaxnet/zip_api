class CreateZips < ActiveRecord::Migration[7.0]
  def change
    create_table :zips do |t|
      t.string :zip_code
      t.string :prefecture_kana
      t.string :city_kana
      t.string :town_kana
      t.string :prefecture_kanji
      t.string :city_kanji
      t.string :town_kanji

      t.timestamps
    end
  end
end
