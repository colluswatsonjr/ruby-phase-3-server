puts "🌱 Seeding spices..."

# Seed your database here
Nation.create(nation_name:'Hyrule', nation_location:'Mountains')
Nation.create(nation_name:'Earth Kingdom', nation_location:'Canyons')
Nation.create(nation_name:'Whiterun', nation_location:'Valleys')
Nation.create(nation_name:'Hogwarts', nation_location:'Plains')

Role.create(role_title:'King', role_rating:"S", role_description:'')
Role.create(role_title:'Knight', role_rating:"B", role_description:'')
Role.create(role_title:'Servant',  role_rating:'F', role_description:'')

Character.create(character_name:'Lj', nation_id:Nation.all.ids.sample, role_id:Role.all.ids.sample)
Character.create(character_name:'Jr', nation_id:Nation.all.ids.sample, role_id:Role.all.ids.sample)
Character.create(character_name:'Tre', nation_id:Nation.all.ids.sample, role_id:Role.all.ids.sample)

puts "✅ Done seeding!"
