=begin
CommandLine RCalc was programmed by Sidepocket on October 8th, 2015

This program will run on Ruby 4.2.0 or lower.

This program is for educational purposes only.

ComandLine RCalc is supported under a Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0) Licenence.

You are free to:

Share — copy and redistribute the material in any medium or format
Adapt — remix, transform, and build upon the material

The licensor cannot revoke these freedoms as long as you follow the license terms:

Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made.
You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.

NonCommercial — You may not use the material for commercial purposes.

No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

The original program Sidepocket can be reached at E-Mail "Sidepocket@2600.nyc" or on Twitter/GitHub @SidpeocketNeo

Shout out to http://www.tutorialspoint.com/ and Derek Banas who helped me learning Ruby online!

Hack The Planet -- http://nyc2600.net - https://meta.wikimedia.org/wiki/Wikimedia_New_York_City

|_|0|_|
|_|_|0|
|0|0|0|

=end 

def calc							#USER INSTRUCTIONS
	puts
	puts "-------------------------------------------------------------------------------"
	puts "Welcome to CommandLine RCalc!"
	puts "The Simple CommandLine Calculator written in Ruby!"
	puts "Format for Equasions are Number(Space)Operator(Space)Number Example: 2 + 2"
	puts "Operators inlcude Additon +, Subraction -, Multiplication * or x, and Division /"
	puts "Enter 'q', 'quit' or 'exit' to quit program and return to command line function."
	puts ""

	while true						#EXIT FUNCTION
		print "Enter Equasion : "
		str = gets.chomp.split(" ")	#USER IMPUT STRING
		return if str[0] == 'q'
		return if str[0] == 'quit'
		return if str[0] == 'QUIT'
		return if str[0] == 'Quit'
		return if str[0] == 'exit'
		return if str[0] == 'EXIT'
		return if str[0] == 'Exit'
		return if str[0] == 'end'
		return if str[0] == 'END'
		return if str[0] == 'End'

		operand1 = str[0].to_i		#OPERATOR VARIABLES
		operand2 = str[2].to_i
		operator = str[1].to_sym

			begin					#ANTI-DIVIDE BY ZERO FUNCTION
				operand1 / operand2
			
			rescue
				puts "You Can't Divide By Zero! What are you trying to killl me!?!"
				exit
			end
		
		case operator				#CASE OPERATOR FUNCTION AKA WHERE THE MAGIC HAPPENS
		when :+ then puts operand1 + operand2
		when :plus then puts operand1 + operand2
		when :PLUS then puts operand1 + operand2
		when :Plus then puts operand1 + operand2
		when :- then puts operand1 - operand2
		when :minus then puts operand1 - operand2
		when :MINUS then puts operand1 - operand2
		when :Minus then puts operand1 - operand2
		when :* then puts operand1 * operand2
		when :x then puts operand1 * operand2
		when :times then puts operand1 * operand2
		when :TIMES then puts operand1 * operand2
		when :Times then puts operand1 * operand2
		when :X then puts operand1 * operand2
		when :/ then puts operand1 / operand2
		when :divide then puts operand1 / operand2
		when :DIVIDE then puts operand1 / operand2
		when :Divide then puts operand1 / operand2
		when :% then puts operand1 % operand2
		else
			puts "Innvalid Input"
		end
	end

end

if __FILE__ == $0					#ANTI-DIVIDE BY ZERO BACK-UP
	calc
end


#END OF PROGRAM ~ Sidepocket
