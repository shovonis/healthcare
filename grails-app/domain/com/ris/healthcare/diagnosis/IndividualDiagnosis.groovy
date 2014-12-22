package com.ris.healthcare.diagnosis

import com.ris.healthcare.individual.Individual

class IndividualDiagnosis {
    Individual individual
    boolean resolved
    String description
    DiagnosisCode diagnosisCode
    boolean deleted
    Date diagnosisDate

    static constraints = {
        description(nullable: true)
        individual(nullable: false)
        diagnosisCode(nullable: false)
        diagnosisDate(nullable: false)
    }
}
