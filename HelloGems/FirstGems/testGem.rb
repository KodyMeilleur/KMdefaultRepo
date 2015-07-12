class Echoes
  $testvar = "1" #global variable
  @@testvar2 = 2 #class wide variable
  def initialize(test1,test2)
    @test_3=test1
    @test_4=test2
  end
  def firstmethod()
    puts(" WARUDO!!!")
    puts($testvar + "...")
    $testvar="2" << "..." # << changes object on left side
    puts($testvar)
  end
end

object = Echoes.new(1,2)
object.firstmethod

BEGIN{
puts "ZA!";
  puts "";
}

END{
puts " #{$testvar} And Time Resumes...";
}