require "#{Rails.root}/app/helpers/application_helper"
include ApplicationHelper

namespace :location do
  desc "Calculate and set location distances"
  task :set_distance  => :environment do
    locations = Location.all

    locations.each do |loc|
      loc.update_attribute(:distance, distance_calculator(loc))
    end

  end
end
