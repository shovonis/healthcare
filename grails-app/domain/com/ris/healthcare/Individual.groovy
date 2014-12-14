package com.ris.healthcare

class Individual {
    String firstName
    String lastName
    String SSN
    Date dateOfBirth
    String status

    static constraints = {
        firstName(blank: false)
        lastName(blank: false)
        SSN(blank: true, nullable: true)

        dateOfBirth(validator: {
            return it <= new Date()
        })
    }
}
