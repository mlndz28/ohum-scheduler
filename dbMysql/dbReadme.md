OHUM Schedule DATABASE
===

This is the database dictionary of the ohumSchedule MySQL db schema.

# TABLES

## DayXTime
Contains tuples of a week day and a daytime. The assuming of this data is that every time is a range of half an hour. So If an input is "Monday 10:30" it covers all the way to "Monday 11:00"

#### Code
```sql
CREATE TABLE `DayXTime` (
  `idDayXTime` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  PRIMARY KEY (`idDayXTime`)
)
```
#### Example values
|Id | Day | Time |
|---|---|---|
|1|Lunes|'7:00'|
|2|Lunes|'11:30'|
|3|Viernes|'16:00'|

## Musician
Stores data about people sharing data of schedule.

#### Code
```sql
CREATE TABLE `Musician` (
  `idMusician` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',
  `name` varchar(40) NOT NULL,
  `instrument` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMusician`)
)
```
#### Example values
|Id | name | instrument |
|---|---|---|
|1|Lucas|violin|
|2|Markus|flute|
|3|Valery|oboe|

## TimeXMusician
This table stores the flesh of the app. Every relationship between a musician and it's available schedule is saved here. It's values are mere id's to be processes in another view.

#### Code
```sql
CREATE TABLE `TimeXMusician` (
  `idTimeXMusician` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `musician` int(11) NOT NULL,
  PRIMARY KEY (`idTimeXMusician`),
  KEY `fk_TimeXMusician_1_idx` (`musician`),
  KEY `fk_TimeXMusician_2_idx` (`time`),
  CONSTRAINT `fk_TimeXMusician_1` FOREIGN KEY (`musician`) REFERENCES `Musician` (`idMusician`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TimeXMusician_2` FOREIGN KEY (`time`) REFERENCES `DayXTime` (`idDayXTime`) ON DELETE NO ACTION ON UPDATE NO ACTION
)
```
#### Example values
|Id | time | musician |
|---|---|---|
|1|8|1|
|2|3|2|
|3|4|2|

## User
For enabling data querying from the webapp, every admin must be able to recognize themselves by knowing and being previously registered in this table.

#### Code
```sql
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL COMMENT '	',
  `pwd` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser`)
)
```
#### Example values
|Id | username | pwd |
|---|---|---|
|1|'admin'|'admin'|
|2|'root'|'123456'|


# VIEWS
## Availability
This view groups the data of availability of musicians, with every descriptive name the table needs.

|idMusician | Nombre | idDayXTime | Dia | Hora
|---|---|---|---|---|
|1|Charles|3|Martes|15:00|
|1|Charles|4|Martes|15:30|
|1|Charles|5|Martes|16:00|
|2|Andrew|34|Miercoles|12:00|
|2|Andrew|35|Miercoles|12:30|
|2|Mary|24|Miercoles|9:30|
|2|Mary|25|Miercoles|10:00|

# PROCEDURES

## checkAvailability
This procedure returns a result set, of every person who has available space between the selected range. Day and time are received in a string form just as usual. The fourth parameter is a bit, for a easy mode of checking availability. Sending a 1 will return only the name of people who have a space in range. Sending a 0 will return their names and Times and some other id's.

#### Signature
```sql
checkAvailability(pDay varchar(50), pStartTime varchar(50), pEndTime varchar(50), pOnlyNames bit)
```

#### Examples
Sending bit 0

|idMusician | Nombre | idDayXTime | Dia | Hora
|---|---|---|---|---|
|1|Charles|3|Martes|15:00|
|1|Charles|4|Martes|15:30|
|1|Charles|5|Martes|16:00|
|2|Andrew|34|Miercoles|12:00|

Sending bit 1

| Nombre |
|---|
|Charles|
|Andrew|

# FUNCTIONS

## getTimeId
Returns the id of the tuple containing the received day and time in the parameter.

#### Signature
```sql
getTimeId(pDay varchar(50), pTime varchar(50)) : int(11)
```

## validUser
Authenticates a pair of username and password. Returns valid pairs found.

#### Signature
```sql
validUser(pUser varchar(50), pPwd varchar(50)) : int(11)
```
