#language = ['ruby', 'javascript', 'python', 'objective-c']

#"can handle an empty collection" do
def my_collect
    empty_array = []
    counter = 0
      my_collect(empty_array) do |x|
        counter += 1
      end
  end
  

  

def my_collect(languages)
    empty_array = []
    counter = 0
    while counter < 4
      puts "#{languages}"
      counter += 1
    end

 #-------------------------------------------------------
#"yields the correct element from a given collection, in this case languages"
def my_collect(languages)
 languages.collect do |x|
 puts x
 end
 end
  #-------------------------------------------------------
 #"returns a new collection of appropriately modified elements, in this case capitalized languages"
 
 def my_collect(languages)
   languages.select do |language|
     language.upcase
   end
 end
 #-------------------------------------------------------
 #'does not modify the original collection' do
def my_collect(languages)
  languages.collect do |language|
  language.upcase
end
end
 
 
 #************************************************************
 

  it "yields the correct element from the given collection, in this case students" do
    my_collect(students) do |student|
      expect(student).to_not eq(nil)
    end
  end
 def my_collect
   yield
 end
 
 def my_collect do |student|
 end

  
  
  

  it "returns a new collection of appropriately modified elements, in this case student first names" do
    expect(my_collect(students) do |student|
      student.split(" ").first
    end).to eq(["Tim", "Tom", "Sophie", "Antoin"])
  end

  it 'does not modify the original collection' do
    my_collect(students) do |student|
      student.split(" ").first
    end
    expect(students).to eq(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'])
  end
end