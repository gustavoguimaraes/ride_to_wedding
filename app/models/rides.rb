class Rides < ActiveRecord::Base
  validates :name, :origin, presence: :true

  def self.status
    ["I need a ride, pretty please with sugar on top", "I am driving there and wouldn't mind giving someone a ride"]
  end

  def self.find_all_riders
    where(status: "I need a ride, pretty please with sugar on top")
  end

  def self.find_all_drivers
    where(status: "I am driving there and wouldn't mind giving someone a ride")
  end

  def self.matches
    matches = []
    Rides.all.each do |obj|
      place = obj.origin.downcase
      Rides.all.each{|new_obj| matches << new_obj if place == new_obj.origin.downcase && obj.status.downcase != new_obj.status.downcase}
    end
    matches
  end

end
