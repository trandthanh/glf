# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

Flat.create(address: '16 Villa Gaudelet, Paris')
Flat.create(address: '3 rue du regard, Paris')
Flat.create(address: '3 rue de la planche, Paris')
Flat.create(address: '11 rue caulaincourt, Paris')
Flat.create(address: '1  rue de montmorency, Paris')
Flat.create(address: '64 rue de rennes, Paris')
