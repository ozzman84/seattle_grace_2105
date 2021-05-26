class Network
  attr_reader :name, :hospitals

  def initialize(name)
    @name = name
    @hospitals = hospitals[]
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  def hightest_paid_doctor
    all_doctors = @hospitals.map do |hospital|
      hospital.doctors
    end.flatten #Can add max_by to the end of this if we want.
    all_doctors.max_by do |doctor|
      doctor.salary
    end
  end

  def doctors_by_hospital
    result = {}
    @hospitals.each do |hospital|
      result[hospital] = hospital.doctors.map do |doctor|
        doctor.name
      end
    end
    result

    #Other options Result = Hash.new { |h,k| hash[key] = []} ??
    # doctors_by_hospital = Hash.new { |hash, key| hash[key] = [] }
    #
    #     @hospitals.select do |hospital|
    #       hospital.doctors.select do |doctor|
    #         doctors_by_hospital[hospital] << doctor.name
    #       end
    #     end
    #     doctors_by_hospital
    #   end

    # def doctors_by_hospital
    #     hash = Hash.new
    #     @hospitals.each do |hospital|
    #       names = []
    #       hospital.doctors.map do |doctor|
    #         names << doctor.name
    #       end
    #       hash[hospital] = names
    #     end
    #     hash
    #   end

    
  end
end
