require 'csv'
require 'faker'
I18n.enforce_available_locales = false

desc "Creates all of the csv files"
task :csv => %i(setup doctors patients donors)

desc "Ensures there is a data directory"
task :setup do
  mkdir_p "data"
end

desc "Creates the doctors CSV file"
task :doctors do
  doctor_titles = %w(MBBS M.D. D.O. DMD Optometrist OD)
  CSV.open("data/doctors.csv", "w") do |csv|

    csv << [
      "id",
      "first",
      "last",
      "title",
      "email",
      "phone_number",
      "address",
      "city",
      "state",
      "zip",
    ]

    100.times do |i|
      csv << [
        i,
        Faker::Name.first_name,
        Faker::Name.last_name,
        doctor_titles.sample,
        Faker::Internet.safe_email,
        Faker::Address.street_address,
        Faker::Address.city,
        Faker::Address.state,
        Faker::Address.zip,
      ]
    end

  end
  puts "Wrote data/doctors.csv"
end

desc "Creates the donors CSV file"
task :donors do
  CSV.open("data/donors.csv", "w") do |csv|

    csv << [
      "ID",
      "Prefix",
      "First Name",
      "Last Name",
      "Suffix",
      "Job Title",
      "Email",
      "Home Phone Number",
      "Cell Phone Number",
      "Street Address",
      "City",
      "State",
      "Zip",
      "Country",
    ]

    100.times do |i|
      csv << [
        i,
        Faker::Name.prefix,
        Faker::Name.first_name,
        Faker::Name.last_name,
        Faker::Name.suffix,
        Faker::Name.title,
        Faker::Internet.safe_email,
        Faker::PhoneNumber.phone_number,
        Faker::PhoneNumber.cell_phone,
        Faker::Address.street_address,
        Faker::Address.city,
        Faker::Address.state,
        Faker::Address.zip,
        Faker::Address.country,
      ]
    end

  end
  puts "Wrote data/donors.csv"
end

desc "Creates the patients CSV file"
task :patients do

  CSV.open("data/patients.csv", "w") do |csv|
    csv << [
      "id",
      "pa_prefix",
      "pa_fname",
      "pa_lname",
      "pa_suffix",
      "pa_email",
      "pa_primary_phone_number",
      "pa_address1",
      "pa_address2",
      "pa_city",
      "pa_state",
      "pa_zip",
      "pa_date_of_birth",
    ]

    100.times do
      dates = (Date.new(1955, 1, 1)..Date.new(2004, 01, 01)).to_a
      csv << [
        SecureRandom.uuid,
        Faker::Name.prefix,
        Faker::Name.first_name,
        Faker::Name.last_name,
        Faker::Name.suffix,
        Faker::Internet.safe_email,
        Faker::PhoneNumber.phone_number,
        Faker::Address.street_address,
        Faker::Address.secondary_address,
        Faker::Address.city,
        Faker::Address.state,
        Faker::Address.zip,
        dates.sample
      ]
    end
  end
  puts "Wrote data/patients.csv"
end