# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Doctor.destroy_all
doctors_data = [
  { name: "Dr. John Smith", specialization: "Cardiology", bio: "Experienced cardiologist with a passion for helping patients maintain heart health.", image: "https://placekitten.com/200/300", fee: 150.00 },
  { name: "Dr. Emily Davis", specialization: "Pediatrics", bio: "Dedicated pediatrician committed to providing compassionate care for children of all ages.", image: "https://placekitten.com/201/300", fee: 120.00 },
  { name: "Dr. Robert Johnson", specialization: "Orthopedics", bio: "Skilled orthopedic surgeon specializing in joint replacements and sports injuries.", image: "https://placekitten.com/202/301", fee: 180.00 },
  { name: "Dr. Sarah Miller", specialization: "Dermatology", bio: "Board-certified dermatologist offering a wide range of skincare services.", image: "https://placekitten.com/203/302", fee: 130.00 },
  { name: "Dr. Michael Brown", specialization: "Ophthalmology", bio: "Expert in diagnosing and treating eye conditions for patients of all ages.", image: "https://placekitten.com/204/303", fee: 160.00 }
]

doctors_data.each do |doctor_data|
  Doctor.create(doctor_data)
end

puts "Seed data has been added."