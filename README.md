# Music DB README

## Introduction

In this repository is located the database used for the project Video Player, also in my GitHub.   
The database management system required is MySql Workbench, which is easy to connect with Python.   
This folder contains 3 files (aside from this): the structure script, a sample data script and 
a .png image of the DB's diagram. The last one it's a representation of the structure, explained
later.

## Installation

As I said, the environment needed is MySql, so it's indispensable to
[download it](https://dev.mysql.com/downloads/workbench/).    
!["MySQL logo"](MySQL-logo.png)

## Structure script

This database has 11 tables, 3 of them are the result of M:N relations. They can be divided in
two groups, as you can see in the diagram. One is the information related to the song itself,
like the album details, or it's style. The other is related to the artists. An artist, in this DB,
is who performs the song, and it can be a soloist or a band. Of course, a singer can join a band or
leave it. Also, a song can have more than one performer.   
Most part of the attributes can be null, so there's no need to fill all the table's data. Not null
fields are the most important for the player's purposes. Another reason is that, in version 2.0,
the data would be feed from the GUI and only a few entries will be obligatory. This is also why
some foreign keys have default values.

## Data script

This script it's not essential. You can run only the structure script and load it with your
personal data. This is just a sample for saving time. It has a mix of international and spanish
songs from well know artist, so it's easy to detect what represents the information. I have tried
to choose diverse data, as different countries, styles or ages, so the DB's relations are richer.
