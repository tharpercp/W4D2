class Employee
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        if @boss != nil
            
        end
    end

    def bonus(multiplier)
        #if it's not a manager
            #if self != manager
        if self.employees.nil?
            bonus = @salary * multiplier
        else #if manager
            queue = [@employees]
            sum = 0
            while queue.length > 0
                queue.each do |emp_inst|
                    if emp_inst.employees != nil
                        emp_inst.employees.each do |inst|
                            queue << inst
                        end
                    else    
                        sum += emp_inst.salary 
                    end
                end
            end
            bonus = sum * multiplier
            #bfs with queue, until empty
                #check if employee has employees, add to queue
        end
    end

    def sum_salaries(arr)
        sum = 0
        arr.each do |inst|
            sum += inst.salary
        end
        sum
    end
end


class Manager < Employee

    def initialize(name, title, salary, boss = nil)
        super
        @employees = []
    end

end

ned = Employee.new("ned", "Founder",1000000)
darren = Employee.new("darren", "Founder",1000000)
ned = Employee.new("ned", "Founder",1000000)
ned = Employee.new("ned", "Founder",1000000)