class ZipsController < ApplicationController
  def top
  end

  def sample
    @zips = []
  end

  def sample_tb
    @zips = []
  end

  def sample_js
  end

  def search
    zip_code = params[:zip_code]
    @zips = Zip.search(zip_code)
    render :sample
  end

  def search_tb
    zip_code = params[:zip_code]
    @zips = Zip.search(zip_code)
    render :sample_tb
  end

  def api_search
    zip_code = params[:zip_code]
    zips = Zip.search(zip_code)
    results = []
    zips.each do |zip|
      results << {
        zip_code: zip.zip_code,
        prefecture: zip.prefecture_kanji,
        city: zip.city_kanji,
        town: zip.town_kanji,
      }
    end
    render json: {results: results}, status: :ok
  end

end
