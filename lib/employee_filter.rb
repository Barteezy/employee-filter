class EmployeeFilter

  def initialize(employee)
    @employees = employee

  end

  def started_before_2006
    before_2006 = []
    @employees.each do |employee|
      before_2006 << employee if employee[:start_date].year < 2006
    end

    before_2006
  end

  def all_with_start_date
    employees_with_start_dates = []
    employee_string_1 = ""
    employee_string_2 = ""
    @employees.each_with_index do |employee, i|
      employee_string_1 << %Q{#{employee[:first_name]} #{employee[:last_name]} (#{employee[:title]}) - #{employee[:start_date].strftime("%-m/%-d/%Y")}",} if i == 0
    end
    @employees.each_with_index do |employee, i|
      employee_string_2 << " ""#{employee[:first_name]} #{employee[:last_name]} (#{employee[:title]}) - #{employee[:start_date].strftime("%-m/%-d/%Y")}" if i == 1
    end

    employees_with_start_dates << employee_string_1 + employee_string_2
    employees_with_start_dates
  end

end