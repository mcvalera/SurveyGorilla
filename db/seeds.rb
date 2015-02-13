=begin
user
{username: string, password: string}
survey
{name: , descripion: }
question
{text: }
option
{text: }
=end
user1 = {username: "marx", password: "uprising"}
user2 = {username: "smith", password: "hiddenhand"}
marx = User.create(user1)
smith = User.create(user2)
survey1 = {name: "alienation", description: "how much has capitalism crushed your spirt?"}
survey2 = {name: "uprisings", description: "how would your life look under a communal utopia?"}
que1 = {text: "how often do you see your friends?"}
que2 = {text: "would you like to see more of the fruit of your labor?"}
que3 = {text: "how much do you like getting oppressed?"}
que4 = {text: "do you blame :"}
opt1 = {text: "very rarely"}
opt2 = {text: "only on holidays"}
opt3 = {text: "I'm happy letting other people take what I make"}
opt4 = {text: "I wish I had to give less of it to my land lord."}
opt5 = {text: "it's rather enjoyable"}
opt6 = {text: "not a lot."}
opt7 = {text: "land holders"}
opt8 = {text: "clergy"}
sur1 = marx.surveys.create(survey1)
q1 = sur1.questions.create(que1)
q2 = sur1.questions.create(que2)
q1.options.create(opt1)
q1.options.create(opt2)
q2.options.create(opt3)
q2.options.create(opt4)
sur2 = marx.surveys.create(survey2)
q3 = sur2.questions.create(que3)
q4 = sur2.questions.create(que4)
q3.options.create(opt5)
q3.options.create(opt6)
q4.options.create(opt7)
q4.options.create(opt8)
