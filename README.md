![celestial bodies database banner](https://github.com/z-bj/galaxy_psql_DB/blob/master/galaxy_DB.png)

## User Story: 
Build a database of celestial bodies using PostgreSQL.

## Creating the database:

Main celestial bodies used: Galaxies, Stars, Planets and Moons.

Create a table for each of these celestial bodies, plus an additional table with different planet types and their description.

### Research:

Research goal: Find celestial bodies that can be related to other celestial bodies.
For example: planetary systems with a main star to relate tables 'planet' and 'star' - or planets with satellites to relate tables 'planet' and 'moon'.

- Searched through Wikipedia and websites related to astrology and celestial bodies to look up the main variables to be tracked for each celestial body.
- Decided to stick to values such as mean radius, distance in light years and orbital period with the goal of creating a simple sample database.
- Due to distance or lack of information of some celestial bodies there are instances of NULL values, and some values were rounded to 2 or 3 decimal places.

✨ Relationships built | Galaxies > Stars > Planets > Moons.

## Relational Database Diagram
Made by replicating database on DRAW.IO

![Relational Database Diagram](https://github.com/z-bj/galaxy_psql_DB/blob/master/mcd.drawio.png)
