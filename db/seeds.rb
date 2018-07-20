# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ email: 'jane@email.com', password:'12' }, { email: 'nelly@email.com', password:'12' }, { email: 'ari@email.com', password:'12' }])
devices = Device.create([{ user_id: 1, make:'Apple', model:'MacBook Air 7,2', serial_number: 'C02PHEZ3G941'}, { user_id: 1, make:'Apple', model:'MacBook Air 7,2', serial_number: 'C02PHEZ324r231'}])