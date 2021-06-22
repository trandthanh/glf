# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

Flat.create(reference_agence_du_bien: 'VA1912-GLF', address: '16 Villa Gaudelet, Paris')
Flat.create(reference_agence_du_bien: 'VA1910-GLF', address: '3 rue du regard, Paris')
Flat.create(reference_agence_du_bien: 'VA1908-GLF', address: '3 rue de la planche, Paris')
Flat.create(reference_agence_du_bien: 'VP066-GLF', address: '11 rue caulaincourt, Paris')
Flat.create(reference_agence_du_bien: 'VA1906-GLF', address: '1  rue de montmorency, Paris')
Flat.create(reference_agence_du_bien: 'VA1904-GLF', address: '64 rue de rennes, Paris')
Flat.create(reference_agence_du_bien: 'VA1917-GLF', address: '16 Villa Gaudelet, Paris')
Flat.create(reference_agence_du_bien: 'VA1917-GLF', address: '3 rue du regard, Paris')
Flat.create(reference_agence_du_bien: 'VA1917-GLF', address: '3 rue de la planche, Paris')
Flat.create(reference_agence_du_bien: 'VA1917-GLF', address: '11 rue caulaincourt, Paris')
Flat.create(reference_agence_du_bien: 'VA1917-GLF', address: '1  rue de montmorency, Paris')
Flat.create(reference_agence_du_bien: 'VA1917-GLF', address: '64 rue de rennes, Paris')
