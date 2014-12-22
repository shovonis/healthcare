package com.ris.healthcare.individual

import com.ris.healthcare.Persistent

class Individual extends Persistent {
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
