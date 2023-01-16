![celestial bodies database banner](https://github.com/z-bj/galaxy_psql_DB/blob/master/assets/DB_galaxy.png)



## User Story 
Design a database of celestial bodies using:

![postgreSQL](https://camo.githubusercontent.com/281c069a2703e948b536500b9fd808cb4fb2496b3b66741db4013a2c89e91986/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f737467726553514c2d3331363139323f7374796c653d666f722d7468652d6261646765266c6f676f3d706f737467726573716c266c6f676f436f6c6f723d7768697465)


## Building the DB

Main celestial bodies used: Galaxies, Stars, Planets and Moons.

Create a table for each of these celestial bodies, plus an additional table with different planet types and their description.

### Research & Development 

Goal: Look up for celestial bodies that can be related to other celestial bodies.
--> Planetary systems with a main star to relate tables 'planet' and 'star' 
--> Planets with satellites to relate tables 'planet' and 'moon'.

- Searched through WWW. related to astronomy and celestial bodies to look up the main variables to be tracked for each celestial body.
- Decided to stick to values such as mean radius, distance in light years and orbital period with the goal of creating a simple sample database.
- Due to distance or lack of information of some celestial bodies there are instances of NULL values, and some values were rounded to 2 or 3 decimal places.

✨ Relationships built | Galaxies > Stars > Planets > Moons.

## Simplified Data Conceptual Model (DCM) of the DB.
Made by replicating database on [DRAW.IO](https://app.diagrams.net/)

![DCM_of_the_database](https://github.com/z-bj/galaxy_psql_DB/blob/master/assets/Simplified_DCM_of_DB.svg)

<img src="https://github.com/z-bj/galaxy_psql_DB/blob/master/assets/moonparrot.gif" width="24">


