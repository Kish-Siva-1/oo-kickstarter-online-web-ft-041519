require 'pry'

class Backer 
  attr_accessor :name, :backed_projects 
  
  def initialize(name)
    @name = name 
    @backed_projects = []
  end 
  
  def back_project(input) 
    @backed_projects << input
    binding.pry
    Project.backers << self 
  end 
  
end 

