User.destroy_all

jb = User.create!({
  first_name: "Jean-Baptiste",
  last_name: "Poquelin",
  email: "jb@gmail.com",
  password: 123456,
  price: 125,
  writer: true,
  phone_number: "0668686868",
  available: true,
  })

puts "C'est bon pour #{jb.first_name}"

epx_medecin = Experience.create!({
  user_id: User.where(first_name: "Jean-Baptiste").first.id,
  category: "Experience",
  start_date: "1-6-2014",
  end_date: "1-6-2015",
  title: "Le Médecin malgré lui",
  description: "Comédie en trois actes et en prose",
  organization: "Théâtre du Palais-Royal",
  })

puts "C'est bon pour #{epx_medecin.title}"

lycee = Experience.create!({
  user_id: User.where(first_name: "Jean-Baptiste").first.id,
  category: "Education",
  start_date: "1-6-2014",
  end_date: "1-6-2015",
  title: "Ecole",
  description: "élève des jésuites",
  organization: "Lycée Louis-le-Grand",
  })

puts "C'est bon pour #{lycee.title}"

############################################

pv = User.create!({
  first_name: "Paul-Marie",
  last_name: "Verlaine",
  email: "pv@gmail.com",
  password: 123456,
  price: 300,
  writer: true,
  phone_number: "00000099999",
  available: true,
  })

puts "C'est bon pour #{pv.first_name}"

epx_poeme = Experience.create!({
  user_id: User.where(first_name: "Paul-Marie").first.id,
  category: "Experience",
  start_date: "1-6-2014",
  end_date: "1-6-2015",
  title: "Les Amies, scènes d'amour sapphique",
  description: "Recueil érotique",
  organization: "Secrète",
  })

puts "C'est bon pour #{epx_poeme.title}"

ecole = Experience.create!({
  user_id: User.where(first_name: "Paul-Marie").first.id,
  category: "Education",
  start_date: "1-6-2014",
  end_date: "1-6-2015",
  title: " les Vilains Bonshommes",
  description: "cercles littéraires parisiens",
  organization: "Ecole de la vie",
  })

puts "C'est bon pour #{ecole.title}"

############################################

nab = User.create!({
  first_name: "Nabila",
  last_name: "Benattia",
  email: "nab@gmail.com",
  password: 123456,
  writer: false,
  })

puts "C'est bon pour #{nab.first_name}"

# MISSION SEED A FINIR
# bio_nab = Mission.create!({
#   user_id: User.where(first_name: "Paul-Marie").id,
#   title: "Ma longue vie",
#   description: "Un truc sérieux",
#   })

############################################

ase = User.create!({
  first_name: "Antoine",
  last_name: "de Saint-Exupéry",
  email: "ase@gmail.com",
  password: 123456,
  price: 400,
  writer: true,
  phone_number: "0793827738",
  available: true,
  })

puts "C'est bon pour #{ase.first_name}"

epx_book = Experience.create!({
  user_id: User.where(first_name: "Antoine").first.id,
  category: "Experience",
  start_date: "1-6-2014",
  end_date: "1-6-2015",
  title: "Le Petit Prince",
  description: "Chaque chapitre relate une rencontre du petit prince qui laisse celui-ci perplexe quant au comportement absurde des 'grandes personnes'.",
  organization: "Mondiale",
  })

puts "C'est bon pour #{epx_book.title}"

college = Experience.create!({
  user_id: User.where(first_name: "Antoine").first.id,
  category: "Education",
  start_date: "1-6-2014",
  end_date: "1-6-2015",
  title: "Ecole",
  description: "Education moderne ",
  organization: "Collège Stanislas de Paris",
  })

puts "C'est bon pour #{college.title}"

############################################




