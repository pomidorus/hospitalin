
#Patient
User.delete_all
patient_1 = User.create!(email: 'test_1@patient.com', password: 'testtest', role: 'patient', public_token: '23245er325str4542')
patient_2 = User.create!(email: 'test_2@patient.com', password: 'testtest', role: 'patient', public_token: '7567443fggf353454')

doctor  = User.create!(email: 'test@doctor.com', password: 'testtest',  role: 'doctor')
nurse   = User.create!(email: 'test@nurse.com', password: 'testtest',   role: 'nurse')