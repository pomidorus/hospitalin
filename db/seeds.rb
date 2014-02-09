
#Patient
User.delete_all
patient_1 = User.create!(email: 'test_1@patient.com', password: 'testtest', role: 'patient', public_token: '23245er325str4542')
patient_2 = User.create!(email: 'test_2@patient.com', password: 'testtest', role: 'patient', public_token: '7567443fggf353454')

doctor_1  = User.create!(email: 'test_1@doctor.com', password: 'testtest',  role: 'doctor', name: 'Виктория Залетова', title: 'хирург')
doctor_2  = User.create!(email: 'test_2@doctor.com', password: 'testtest',  role: 'doctor', name: 'Андрей Куницин', title: 'проктолог')

nurse_1   = User.create!(email: 'test_1@nurse.com', password: 'testtest',   role: 'nurse', name: 'Антонина Некрасова', title: 'медсестра')
nurse_2   = User.create!(email: 'test_2@nurse.com', password: 'testtest',   role: 'nurse', name: 'Элеонора Кабанова', title: 'медсестра')


Patient.delete_all
