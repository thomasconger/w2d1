class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @students = []
        @teachers = []
        @grades = Hash.new {|h,k| h[k] = Array.new()}
    end

    def name
        @name
    end
    def slogan
        @slogan
    end
    def teachers
        @teachers
    end
    def students
        @students
    end
    def hire(teacher)
        @teachers.push(teacher)
        @teachers
    end
    def enroll(student)
        if @students.length < @student_capacity
            @students << student
            true
        else
            false
        end
    end
    def enrolled?(student)
        if @students.include?(student)
            true
        else
            false
        end
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student, grade)
        if @students.include?(student)
            @grades[student] << grade
            true
        else
            false
        end
    end

    def num_grades(student)
        @grades[student].length
    end
    def average_grade(student)
        if @students.include?(student) && @grades[student] != []
            @grades[student].sum / @grades[student].length
        else
            nil
        end
    end
end
