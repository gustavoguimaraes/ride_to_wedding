class Rides < ActiveRecord::Base
  validates :name, :origin, presence: :true

  def self.status
    ["Rider", "Driver"]
  end
end
