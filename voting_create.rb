def create(object)
	case object
	when "politician"
		create_politician
		@created = true
	when "person"
		create_person
		@created = true
	else
		puts "Not a valid option."
	end
end

def create_politician
	new_politician = Politician.new(ask_formal("What is the the politician's name?"), ask_party("What is the politician's party?"))
	unless new_politician.nil?
		puts "You have created a new politician."
		puts "#{new_politician.party} Politician: #{new_politician.name}."
		break_line
	end
end

def create_person
	new_person = Person.new(ask_formal("What is the the person's name?"), ask_politics("What is the person's politics?"))
	puts "You have created a new person."
	puts "#{new_person.politics} Person: #{new_person.name}."
	break_line
end