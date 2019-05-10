require 'rails_helper'

RSpec.describe "astronauts index page", type: :feature do
  before(:each) do
    @astronaut_1 = Astronaut.create!(name: "Astronaut 1", age: 30, job: "Comander")
    @astronaut_2 = Astronaut.create!(name: "Astronaut 2", age: 35, job: "Lieutenant")
    @astronaut_3 = Astronaut.create!(name: "Astronaut 3", age: 40, job: "Captain")

    @astronauts = Astronaut.all
  end

  it "displays a list of all astronauts with name, age, and job" do

    visit astronauts_path

    expect(page).to have_content(@astronaut_1.name)
    expect(page).to have_content(@astronaut_1.age)
    expect(page).to have_content(@astronaut_1.job)

    expect(page).to have_content(@astronaut_2.name)
    expect(page).to have_content(@astronaut_2.age)
    expect(page).to have_content(@astronaut_2.job)
  end

  it "displays average age of all astronauts" do
    visit astronauts_path

    expect(page).to have_content(@astronauts.average_age)
  end
end
