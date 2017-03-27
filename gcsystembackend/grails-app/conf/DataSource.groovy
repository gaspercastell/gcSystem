dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    dialect = org.hibernate.dialect.PostgreSQLDialect
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}

environments {
    development {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://127.0.0.1:5432/bdgcsystem_test"
            username = "admin"
            password = "castell"
        }
    }
    /*
    test {
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:postgres://127.0.0.1:5432/bdgcsystem"
            username = "admin"
            password = "castell"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgres://127.0.0.1:5432/bdgcsystem"
            username = "admin"
            password = "castell"
        }
    } */
}
