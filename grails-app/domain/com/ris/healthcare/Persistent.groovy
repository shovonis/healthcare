package com.ris.healthcare

import java.sql.Timestamp

abstract class Persistent implements Serializable {
    Timestamp dateCreated
    User createdBy
    Timestamp dateLastUpdated
    User lastUpdatedBy

    static constraints = {
        dateCreated(nullable: true)
        dateLastUpdated(nullable: true)
        createdBy(nullable: true)
        lastUpdatedBy(nullable: true)
    }
}
