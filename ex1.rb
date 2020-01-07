class Employee
attr_accessor :name ,:empid,:branch
	def initialize(name=nil,empid=nil,branch=nil)
		@name=name
		@empid=empid
		@branch=branch
	end
	def display
		puts "Name: #{@name}"
		puts "empid:#{@empid}"
		puts "branch:#{@branch}"
	end
end
class Part_time_employee < Employee
attr_accessor :numofhrs,:salperhr
	def initialize(name,empid,branch,numofhrs,salperhr)
		super name,empid,branch
		@numofhrs=numofhrs
		@salperhr=salperhr
	end
	def salary
		salary=(@numofhrs*@salperhr)
	end
	def display
		super.display
		puts "salary :"+salary.to_s
	end
end
class Regular_employee<Employee
attr_accessor :salperday,:bonus
	def initialize(name,empid,branch,salperday,bonus)
		super name,empid,branch
		@salperday=salperday
		@bonus=bonus
	end
	def salary
		salary=((@salperday*30)+@bonus)
	end
	def display
		super.display
		puts "salary :" +salary.to_s
	end
end
r1=Regular_employee.new("Rishika",1245,"R&D",4000,500)
r1.salary()
r1.display
p1=Part_time_employee.new("priya",1367,"it",500,500)
p1.salary
p1.display


