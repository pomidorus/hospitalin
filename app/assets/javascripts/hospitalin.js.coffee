Main =
  init: ->
    patient_authorization = $('.patient_authorization')

    user_list = $('.select_user li')
    user_list.bind('click', (e) ->
      e.preventDefault()
      user_list.removeClass('active')
      $(@).addClass('active')
    )


    patient_form = $('.patient_form')
    doctor_form = $('.doctor_form')

    patients_nav = $('.patients')
    patients_nav.bind('click', (e) ->
      e.preventDefault()
      patient_form.removeClass('hidden')
      doctor_form.addClass('hidden')
      patient_authorization.removeClass('doctor_color')
      patient_authorization.addClass('patient_color')
    )

    doctors_nav = $('.doctors')
    doctors_nav.bind('click', (e) ->
      e.preventDefault()
      doctor_form.removeClass('hidden')
      patient_form.addClass('hidden')
      patient_authorization.removeClass('patient_color')
      patient_authorization.addClass('doctor_color')
    )



$ ->
  Main.init()