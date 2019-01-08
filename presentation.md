% Mandatory Access Control in PostgreSQL - giving users ownership of their data
% Leon du Toit
% 2019-01-15

# Outline

* why take data ownership seriously?
* why Mandatory Access Control?
* a brief introduction to the `pg-need-to-know` module
* a use case to demostrate features:
    * For users: ownership, insight and consent-based usage
    * For administrators: fine-grained access control, audit information
    * For developers: a rich REST API, with a built-in authorization model

# Why take data ownership seriously?

* Regulations of [the GDPR](https://eugdpr.org/the-regulation/)
    * increased focus on data privacy and protection
    * right to access
    * right to be forgotten
    * data portability
    * consent-based data usage
    * increased demand for audit information
* To counter surveilance capitalism
    * you (and your data) are the product
    * building applications to fight this trend

# What Mandatory Access Control?

* _enforcible_ policies, in constrast to Discretionary Access Control
* enables consent-based data access
* supports granular access needs

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

# Use case

Key terms:

* data owner: provides data about themselves
* data user:  analyses data about others
* admin: creates and implements access control policies

# Use case

Assume the following setup:

* data owners: A, B, C, D, E, F
* data users: X, Y, Z
* tables: spending_habits, personal_details, containing data from all data owners

# Use case

Now suppose we need to set up the following access control rules in our DB:

* data users X, and Y should only have access to data in tables spending_habits and only data from owners A, B, C, D
* data user Z should have access to all data - i.e. tables spending_habits, personal_details

# Use case

A hypothetical sequence of events:

1. admin creates tables
2. data owners and data users register themselves, data is collected
3. admin creates groups, adds members, adds table grants
4. dats is analysed
5. users manage their own data
6. admins get audit insights
7. developers create applications using composing these features

# Table creation

# User registration

* can require consent before user registration
* data collection not possible without registration

# Group setup, table grants

* can link consent(s) to groups via group metadata
* group1
    * members: ((X, Y), (A, B, C, D))
    * select table access grant: (spending_habits)
* group2
    * members: ((Z), (A, B, C, D, E, F))
    * select table access grants: (spending_habits, personal_details)

# Data analysis

# Data management by owners

* right to access
* data portability
* right to be forgotten

# Right to access

# Data portability

# Right to be forgotten

# Audit

# Application development

```txt

client -> webapp -> REST -> (pg-need-to-know, PostgresQL)

```
