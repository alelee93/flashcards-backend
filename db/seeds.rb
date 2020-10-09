# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

js_topic = Topic.create(name: 'JavaScript')
rails_topic = Topic.create(name: 'Ruby on Rails')

js_flashcard_set = FlashcardSet.create(
    name: 'JavaScript Project',
    topic_id: js_topic.id
)


question_1 = Question.create(
    question: 'What is a service class?', 
    answer: 'A service class is a class specific to our domain that handles some of the business logic of the application.',
    flashcard_set_id: js_flashcard_set.id )

question_2 = Question.create(
    question: 'What does rack-CORS do?', 
    answer: 'This will allow you to test your APIs while developing them locally. With CORS enabled and your resources configured, you should be able to now run rails server, start up your API and begin sending requests to it.',
    flashcard_set_id: js_flashcard_set.id )

question_3 = Question.create(
    question: 'What happens when you use the --api flag?', 
    answer: "By using the --api flag, Rails will remove a lot of default features and middleware, mostly related to the browser, since it won't be needed. Controllers will inherit from ActionController::APIrather than ActionController::Base and generators will skip generating views.",
    flashcard_set_id: js_flashcard_set.id )


   