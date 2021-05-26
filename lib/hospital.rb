class Hospital
  attr_reader :name,:chief_of_surgery, :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
  #   total = 0
  #   @doctors.each do |doctor|
  #     total += doctor.salary
  # end
  # total

  #another option is
  @doctors.sum do |doctor|
    doctor.salary
  end

  def lowest_paid_doctor.
    # lowest_doctor = @doctors[0]
    # @doctors.each do |doctor|
    #   if doctor.salary < lowest_doctor.salary
    #     lowest_doctor = doctor
    #   end
    # end

    #Another option is
    lowest_doctor = @doctors.min_by do |doctor|
      doctor.salary
    end #You can end with end.name and you might see it in the wild.
    lowest_doctor.name
  end

  def specialties
    @doctors.map do |doctor|
      doctor.specialty
    end
  end
end
