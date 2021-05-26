require 'rspec'
require './lib/hospital'
require './lib/doctor'
require './lib/network'

RSpec.describe Network do
  before :each do

  end
  describe 'instantiation' do
    it 'exists' do
      gsmn = Network.new("Greater Seattle Medical Network")

      expect(gsmn).to be_a Network
    end

    it 'has attributes on instantiation' do

      expect(gsmn.name).to eq("Greater Seattle Medical Network")
      expect(gsmn.hospitals).to eq([])
    end

    describe 'Methods' do
      before :each do
        gsmn = Network.new("Greater Seattle Medical Network")
        meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
        alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
        seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])
        miranda = Doctor.new({name: "Miranda Bailey", specialty: "General Surgery", education: "Stanford University", salary: 150_000})
        derek = Doctor.new({name: "Derek Sheperd", specialty: "Neurosurgery", education: "University of Pennsylvania", salary: 125_000})
        grey_sloan = Hospital.new("Grey Sloan Memorial", "Larry Maxwell", [miranda, derek])

        expect(@gsmn.hospitals).to eq([@seattle_grace, @grey_sloan])
      end

      it 'can add a hospital to the network' do
        @gsmn.add_hospital(@seattle_grace)
        @gsmn.add_hospital(@grey_sloan)

        expect(@gsmn.hospitals).to eq([@seattle_grace, @grey_sloan])
      end

      it 'can find the highest paid doctor in the network' do
        expect(@gsmn.hightest_paid_doctor).to eq(@miranda)
      end

      it 'can group doctors by hospital' do
        @gsmn.add_hospital(@seattle_grace)
        @gsmn.add_hospital(@grey_sloan)

        expected = {
          @seattle_grace => [@meredith.name, @alex.name],
          @grey_sloan => [@miranda.name, @derek.name]
        }

        expect(gsmn.doctors_by_hospital).to eq(expected)
      end
    end
end
