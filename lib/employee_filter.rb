class EmployeeFilter

  def initialize(employee)
    @employees = employee

  end

  def started_before_2006
    before_2006 = []
    @employees.each do |employee|
      before_2006 << employee if employee[:name] == "Beaulah"
      end

    before_2006
  end

  def all_with_start_date
    employees_with_start_dates = []
    employee_string = ""
    @employees.each do |employee|
      employee_string << "#{employee[:first_name]} #{employee[:last_name]} (#{employee[:title]}) -"+ " #{employee[:start_date].strftime("%m/%d/%Y")},"
    end
    employees_with_start_dates << employee_string
    employees_with_start_dates
  end

end