# Db2 Catalog: A guided tour
This repository holds add-on material for my my talk "Db2 Catalog - A Guided Tour". Book it now, invitations are welcome... ;-)

* Db2 Aktuell conference, September 2017, Essen, Germany
* IDUG EMEA conference, October 2017, Lisboa, Portugal
* IDUG EMEA conference, October 2023, Prague, Czech Republic
* ...

### Packed Descriptor
The files `cattable.out` and `cattable2.out` were produced running [`db2cat`](https://www.ibm.com/docs/en/db2/11.5?topic=commands-db2cat-system-catalog-analysis) after creating the objects with the SQL script. One file includes XML statistics, the other not. (Db2 11.1)

The file `cattable2023.out` was produced for the table created with `cattable2023.sql` and includes XML statistics. (Db2 11.5)

### Reference Links
Some links related to my presentation (Version 11.5 - you may switch to current or earlier version):
* [Road map to catalog views](https://www.ibm.com/docs/en/db2/11.5?topic=views-road-map-catalog)
* [Db2 Catalog Statistics Tables](https://www.ibm.com/docs/en/db2/11.5?topic=statistics-catalog-tables)
* [Catalog views](https://www.ibm.com/docs/en/db2/11.5?topic=sql-catalog-views)
* [CREATE DATABASE command](https://www.ibm.com/docs/en/db2/11.5?topic=commands-create-database)
* [SQL and XML limits](https://www.ibm.com/docs/en/db2/11.5?topic=sql-xml-limits)
* [catalogcache_sz configuration parameter](https://www.ibm.com/docs/en/db2/11.5?topic=parameters-catalogcache-sz-catalog-cache-size)
* [Default privileges granted on creating a database](https://www.ibm.com/docs/en/db2/11.5?topic=ownership-default-privileges-granted-creating-database)
* [Gaining access to data through indirect means](https://www.ibm.com/docs/en/db2/11.5?topic=ownership-gaining-access-data-through-indirect-means)
* [Determining the date a database object was last used](https://www.ibm.com/docs/en/db2/11.5?topic=interfaces-determining-date-database-object-was-last-used)


### Sample SQL
How to retrieve the view text (shown for `SYSCAT.TABLES`):   
```
select text from syscat.views where
viewname='TABLES' and viewschema='SYSCAT'
```

A look at file descriptors:
```
select fid, name from sysibm.systables where fid in (1,2,3,8,10,12,13,19,20,83) and creator='SYSIBM'
```

