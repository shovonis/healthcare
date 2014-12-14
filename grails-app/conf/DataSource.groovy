dataSource {
    pooled = true
    dbCreate = "update"
    url = "jdbc:mysql://localhost/healthcare"
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = "therap"
    validationQuery="SELECT 1"
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost/healthcare"
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "therap"
            validationQuery="SELECT 1"
            logSql = true
        }
    }
    test {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost/healthcare"
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "therap"
            validationQuery="SELECT 1"
        }
    }
}
