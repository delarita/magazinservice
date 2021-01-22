# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Prestation.destroy_all
Service.destroy_all


Service.create({name: "epilation", description: "Épilation toutes zones pour les femmes."})
Service.create({name: "soin_visage", description: "Soins du visage spécifiques et anti-âge pour retrouver une peau éclatante.."})
Service.create({name: "maquillage_perm", description: "Soyez sublime à tout moment de la journée grâce au maquillage permanent."})
Service.create({name: "massage", description: "Eveil de la sensibilité, redécouverte du plaisir."})

massage_id = Service.find_by(name: 'massage').id
puts massage_id
Prestation.create({service_id: massage_id,name: "Relaxation sensitive", description: "Description de Relaxation sensitive"})
Prestation.create({service_id: massage_id,name: "Californien ou « toucher du cœur »", description: "Description de Californien ou « toucher du cœur »"})
Prestation.create({service_id: massage_id,name: "Harmonisant, énergétique", description: "Description de Harmonisant, énergétique"})
Prestation.create({service_id: massage_id,name: "Tonique", description: "Description de Tonique"})
Prestation.create({service_id: massage_id,name: "Rééquilibrage énergétique", description: "Description de Rééquilibrage énergétique"})
Prestation.create({service_id: massage_id,name: "Modelage du dos", description: "Description de Modelage du dos"})

soinvisage_id = Service.find_by(name: 'soin_visage').id
puts soinvisage_id
Prestation.create({service_id: soinvisage_id,name: "Soins junior", description: "Soins junior"})
Prestation.create({service_id: soinvisage_id,name: "Soins du visage à l’Aloe vera", description: "Description de Soins du visage à l’Aloe vera"})
Prestation.create({service_id: soinvisage_id,name: "Soin du visage galvanic spa", description: "Description de Soin du visage galvanic spa"})
Prestation.create({service_id: soinvisage_id,name: "Teinture des cils ou sourcils", description: "Description de Teinture des cils ou sourcils"})
Prestation.create({service_id: soinvisage_id,name: "Manucure", description: "Description de Manucure"})
Prestation.create({service_id: soinvisage_id,name: "Soins spécifique des pieds", description: "Description de Soins spécifique des pieds"})
Prestation.create({service_id: soinvisage_id,name: "Pose de vernis", description: "Description de Pose de vernis"})
Prestation.create({service_id: soinvisage_id,name: "Cours individuel d’auto maquillage (1h30)", description: "Description de Cours individuel d’auto maquillage (1h30)"})
Prestation.create({service_id: soinvisage_id,name: "Maquillage jour", description: "Description de Maquillage jour"})
Prestation.create({service_id: soinvisage_id,name: "Forfait Matinée ou Après midi « bien être » – (3h)", description: "Description de Forfait Matinée ou Après midi « bien être » – (3h)"})
