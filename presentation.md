% Mandatory Access Control in PostgresQL - giving users ownership of their data
% Leon du Toit
% 2019-01-15

# Outline

* why take data ownership seriously?
* a brief introduction to the `pg-need-to-know` module
* `pg-need-to-know` via REST
* a use case to demostrate features:
    * For users: ownership, insight and consent-based usage
    * For administrators: fine-grained access control, audit information
    * For developers: a rich REST API, with a built-in authorization model
* a deeper look at the web architecture

# Why take data ownership seriously?

* Regulations of [the GDPR](https://eugdpr.org/the-regulation/)
    * increased focus on data privacy and protection
    * right to access
    * right to be forgotten
    * data portability
    * consent-based data usage
    * increased demand for audit information
* To counter surveilance capitalism
    * "you (and your data) are the product"
    * building applications to fight this trend

# pg-need-to-know

* PostgresQL "module" - really just a set of tables, views, and functions
* implements Mandatory Access Control
* more limited approach than [SEPostgreSQL](https://wiki.postgresql.org/wiki/SEPostgreSQL_SELinux_Overview)
* source: https://github.com/leondutoit/pg-need-to-know
* written in [PL/pgSQL](https://www.postgresql.org/docs/current/plpgsql-overview.html)
    * procedural language, extending SQL with control structures
    * used to create functions
    * ~1000 sloc, another ~1500 for tests
* designed to be used via a REST API

# pg-need-to-know via REST

```txt

HTTP client -> webapp -> REST server -> (pg-need-to-know, PostgresQL)

```
