require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe "class methods" do
    before(:each) do
      @astronaut_1 = Astronaut.create!(name: "Astronaut 1", age: 30, job: "Comander")
      @astronaut_2 = Astronaut.create!(name: "Astronaut 2", age: 35, job: "Lieutenant")
      @astronaut_3 = Astronaut.create!(name: "Astronaut 3", age: 40, job: "Captain")

      @astronauts = Astronaut.all
    end

    it ".average_age"

    expect(@astronauts.average_age).to eq(35)
  end

end
