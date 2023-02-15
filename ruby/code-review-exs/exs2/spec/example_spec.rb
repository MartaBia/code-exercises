require 'example'

RSpec.describe "Grades report" do
  it "Returns the colour Green tag and the number when there is only one Green grade" do
    expect(grades_report("Green")).to eq("Green: 1")
  end

  it "Returns the colour Amber tag and the number when there is only one Amber grade" do
    expect(grades_report("Amber")).to eq("Amber: 1")
  end

  it "Returns the colour Red tag and the number when there is only one Red grade" do
    expect(grades_report("Red")).to eq("Red: 1")
  end

  it "Returns the colour Green tag and the count when there are two Green grade" do
    expect(grades_report("Green, Green")).to eq("Green: 2")
  end

  it "Returns the colour Amber tag and the count when there are two Amber grade" do
    expect(grades_report("Amber, Amber")).to eq("Amber: 2")
  end

  it "Returns the colour Red tag and the count when there are two Red grade" do
    expect(grades_report("Red, Red")).to eq("Red: 2")
  end

  # Version with one line only
  # it "Returns the list of results when there are 2 Green and 1 Amber" do
  #   expect(grades_report("Green, Green, Amber")).to eq("Green: 2, Amber: 1")
  # end

  # it "Returns the list of results when there are 2 Green, 2 Amber and 1 red" do
  #   expect(grades_report("Green, Green, Amber, Amber, Red")).to eq("Green: 2, Amber: 2, Red: 1")
  # end

  # it "Returns the list of results when there are 2 Greens, 2 Amber and 2 Red" do
  #   expect(grades_report("Green, Green, Amber, Amber, Red, Red")).to eq("Green: 2, Amber: 2, Red: 2")
  # end

  # it "Returns the list of results when there are 2 Reds and one Amber" do
  #   expect(grades_report("Red, Red, Amber")).to eq("Red: 2, Amber: 1")
  # end

  # it "throws an error if no string is passed" do
  #   expect{ grades_report("") }.to raise_error("A string must be inserted")
  # end

    # Version with one line for each colour
  it "Returns the list of results when there are 2 Green and 1 Amber" do
    expect(grades_report("Green, Green, Amber")).to eq("Green: 2\nAmber: 1")
  end

  it "Returns the list of results when there are 2 Green, 2 Amber and 1 red" do
    expect(grades_report("Green, Green, Amber, Amber, Red")).to eq("Green: 2\nAmber: 2\nRed: 1")
  end

  it "Returns the list of results when there are 2 Greens, 2 Amber and 2 Red" do
    expect(grades_report("Green, Green, Amber, Amber, Red, Red")).to eq("Green: 2\nAmber: 2\nRed: 2")
  end

  it "Returns the list of results when there are 2 Reds and one Amber" do
    expect(grades_report("Red, Red, Amber")).to eq("Red: 2\nAmber: 1")
  end

  it "throws an error if no string is passed" do
    expect{ grades_report("") }.to raise_error("A string must be inserted")
  end
end