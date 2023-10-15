# Db2 Catalog: A guided tour
This repository holds add-on material for my my talk "Db2 Catalog - A Guided Tour". Book it now, invitations are welcome... ;-)

* Db2 Aktuell conference, September 2017, Essen, Germany
* IDUG EMEA conference, October 2017, Lisboa, Portugal
* IDUG EMEA conference, October 2023, Prague, Czech Republic
* ...

### Packed Descriptor
The files `cattable.out` and `cattable2.out` were produced running [`db2cat`](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.admin.cmd.doc/doc/r0024085.html) after creating the objects with the SQL script. One file includes XML statistics, the other not.

### Reference Links
Some links related to my presentation (Version 11.1 - you can switch to current version):
* [Road map to catalog views](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.sql.ref.doc/doc/r0011297.html)
* [Db2 Catalog Statistics Tables](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.admin.perf.doc/doc/c0005087.html)
* [Catalog views and consistent column names](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.sql.ref.doc/doc/r0008443.html)
* [CREATE DATABASE command](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.admin.cmd.doc/doc/r0001941.html)
* [SQL and XML limits](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.sql.ref.doc/doc/r0001029.html)
* [catalogcache_sz configuration parameter](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.admin.config.doc/doc/r0000338.html)
* [Default privileges granted on creating a database](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.admin.sec.doc/doc/c0054269.html)
* [Gaining access to data through indirect means](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.admin.sec.doc/doc/c0021061.html)
* [Determining the date a database object was last used](https://www.ibm.com/support/knowledgecenter/SSEPGG_11.1.0/com.ibm.db2.luw.admin.mon.doc/doc/c0056434.html)


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

