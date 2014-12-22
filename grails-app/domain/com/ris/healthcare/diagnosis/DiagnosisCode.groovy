package com.ris.healthcare.diagnosis

/**
 * @author rifatul.islam
 * @since 12/22/14.
 */
class DiagnosisCode {
    String diagnosisCode
    String description
    String category

    static constraints = {
        id:diagnosisCode
        diagnosisCode(maxSize: 280)
        description(nullable: false)
        category(nullable: false)
    }
}
