# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
financial = Category.create(category: "Financial")
health = Category.create(category: "Health")
misc = Category.create(category: "Misc")

Task.create(task: "Call bank", description: "call bank", complete: "true", phone: 2344456798,category_id: financial.id)
Task.create(task: "Call Dr", description: "call Dr", complete: "false", phone: 2344456798, category_id: health.id)
Task.create(task: "Call credit card company", description: "call credit card co", complete: "false", phone: 2344456798, category_id: financial.id)
Task.create(task: "Clean living room", description: "dust, vacuum", complete: "true", category_id: misc.id)