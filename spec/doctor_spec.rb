require './lib/doctor'

RSpec.describe do
  it 'exists' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

    expect(meredith).to be_a(Doctor)
    expect(meredith.name).to eq("Meredith Grey")
    # expect(meredith.specialty).to eq("General Surgery")
    # expect(meredith.education).to eq("Harvard University")
  end

  xit 'calls specialty' do
    meredith = Doctor.new({name: "Meredeth Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

    expect()
  end
end
