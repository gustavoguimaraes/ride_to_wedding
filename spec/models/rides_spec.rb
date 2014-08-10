require "rails_helper"

describe Rides do
  context ".matches" do
    it "returns an array places of origin is the same but statuses are diffent" do
      Jesus = Rides.create!(name: "Jesus", origin: "Bethlehem", status: "Rider")
      Maria = Rides.create!(name: "Maria", origin: "Bethlehem", status: "Driver")

      expect(Rides.matches).to eq([Maria, Jesus])
    end
  end
end