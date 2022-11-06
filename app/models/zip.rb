class Zip < ApplicationRecord

  def self.search(zip_code)
    if zip_code.blank?
      []
    else
      Zip.where("zip_code LIKE ?",  zip_code + "%").limit(10)
    end
  end

end
