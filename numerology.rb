def determine_birthpath_number(birthdate)
  result = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i +
          birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i +
           birthdate[6].to_i + birthdate[7].to_i

  result = result.to_s
  result = result[0].to_i + result[1].to_i

  if result > 9
    result = result[0].to_i + result[1].to_i
  end
  return result
end

def get_birthpath_message(birthpath_number)
  case birthpath_number.to_i
  when 1
    message = "Number 1\nOne is the leader. The number one indicates the ability to
          stand alone, and is a strong vibration. Ruled by the Sun."
  when 2
    message =  "Number 2\nThis is the mediator and peace-lover. The number two indicates
     the desire for harmony. It is a gentle, considerate, and sensitive vibration.
      Ruled by the Moon."
  when 3
    message = "Number 3\nNumber Three is a sociable, friendly, and outgoing vibration.
    Kind, positive, and optimistic, Three’s enjoy life and have a good sense of
    humor. Ruled by Jupiter."
  when 4
    message = "Number 4\nThis is the worker. Practical, with a love of detail, Fours
    are trustworthy, hard-working, and helpful. Ruled by Uranus."
  when 5
    message = "Number 5\nThis is the freedom lover. The number five is an intellectual
    vibration. These are ‘idea’ people with a love of variety and the ability to
    adapt to most situations. Ruled by Mercury."
  when 6
    message = "Number 6\nThis is the peace lover. The number six is a loving, stable,
    and harmonious vibration. Ruled by Venus."
  when 7
    message = "Number 7\nThis is the deep thinker. The number seven is a spiritual
    vibration. These people are not very attached to material things, are
    introspective, and generally quiet. Ruled by Neptune."
  when 8
    message = "Number 8\nThis is the manager. Number Eight is a strong, successful,
    and material vibration. Ruled by Saturn."
  when 9
    message = "Number 9\nThis is the teacher. Number Nine is a tolerant, somewhat
    impractical, and sympathetic vibration. Ruled by Mars."
  else
    message = "Number 1-9 somehow not calculated. :/"
  end
end

puts "Enter your birthdate in the format MMDDYYYY"
birthdate = gets.chomp
#puts birthdate
birthpath_number = determine_birthpath_number(birthdate)
#puts birthpath_number
message = get_birthpath_message(birthpath_number)
puts "Your birth path number is #{birthpath_number.to_s}\n #{message}"
