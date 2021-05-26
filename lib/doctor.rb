class Doctor
  attr_reader :person,
              :name,
              :specialty,
              :education,
              :salary

  def initialize(meredith)
    @person = Doctor.new
    @name = @person["name"]
    # @specialty = @person([1])
    # @education = @person([2])
    # @salary = @person([3])
  end

  # def ==(person)
  #   self.class === other and
  #   person.name == @name and
  #   person.specialty == @specialty and
  #   person.education == @education and
  #   person.salary == @salary
  # end

  # def meredith
  #   @name.meredith ^ @specialty
  # end
end
