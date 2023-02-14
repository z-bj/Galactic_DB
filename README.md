![celestial bodies database banner](https://github.com/z-bj/Galactic_DB/blob/master/Galactic-database-banner.jpg)

![vim](https://img.shields.io/badge/Vim-019733.svg?style=for-the-badge&logo=Vim&logoColor=white)![postgreSQL](https://camo.githubusercontent.com/281c069a2703e948b536500b9fd808cb4fb2496b3b66741db4013a2c89e91986/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f737467726553514c2d3331363139323f7374796c653d666f722d7468652d6261646765266c6f676f3d706f737467726573716c266c6f676f436f6c6f723d7768697465)![wikidata](https://img.shields.io/badge/Wikidata-006699.svg?style=for-the-badge&logo=Wikidata&logoColor=blakc)![NASA](https://img.shields.io/badge/NASA-E03C31.svg?style=for-the-badge&logo=NASA&logoColor=white)

# User Story
> Create a database of planetary systems leveraging PostgreSQL.

## DB design :

The primary astronomical bodies used are moons, planets, galaxies, as well as stars.

Make a table for each celestial body as well as one with the many sorts of planets and their descriptions.


### R&d

> Finding celestial bodies that may be connected to others.

⟶ Planetary systems with a main star to relate tables 'planet' and 'star'

⟶ Planets with satellites to relate tables 'planet' and 'moon'.

***Looked up the primary variables to be checked for each celestial body on the Internet relating to astronomy and celestial bodies.***


***To construct a basic sample database, we decided to keep to values like mean radius, distance in light years, and orbital period.***


***Some celestial bodies have NULL values due to distance or a lack of information, and some numbers have been rounded to two or three decimal places.***

Relationships are formed | Galaxies > Stars > Planets > Moons.

### [DB Dump](https://github.com/z-bj/Galactic_DB/blob/master/universe.sql)

## Data Conceptual Model (DCM)
[DRAW.IO](https://app.diagrams.net/) was used to replicate the database.

![DCM_of_the_database](https://github.com/z-bj/Galactic_DB/blob/master/assets/DUM.jpg)

<img src="https://github.com/z-bj/galaxy_psql_DB/blob/master/assets/moonparrot.gif" width="36">


