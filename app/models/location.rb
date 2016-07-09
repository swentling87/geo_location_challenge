class Location < ActiveRecord::Base
  include ApplicationHelper
  after_create :set_distance

  default_scope { order('distance ASC')}

  def self.import(file)
    CSV.foreach(file.path, {:col_sep => "\t", skip_blanks: true, :headers => [:name, :address_1, :address_2, :postal_code_name, :postal_code_suffix, :phone_number, :latitude, :longitude, :radius]}) do |row|
      Location.create! row.to_hash
    end
  end

  private
    def set_distance
      reload
      self.update_attribute(:distance, distance_calculator(self))
    end

end
