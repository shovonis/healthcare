package com.ris.healthcare

import com.ris.healthcare.user.User

import java.sql.Timestamp

abstract class Persistent implements Serializable {
    protected Timestamp dateCreated
    protected User createdBy
    protected Timestamp dateLastUpdated
    protected User lastUpdatedBy

    static constraints = {
        dateCreated(nullable: true)
        dateLastUpdated(nullable: true)
        createdBy(nullable: true)
        lastUpdatedBy(nullable: true)
    }
}
