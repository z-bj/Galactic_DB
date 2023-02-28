![celestial bodies database banner](https://github.com/z-bj/Galactic_DB/blob/master/Galactic-database-banner.jpg)

![vim](https://img.shields.io/badge/Vim-019733.svg?style=for-the-badge&logo=Vim&logoColor=white)![postgreSQL](https://camo.githubusercontent.com/281c069a2703e948b536500b9fd808cb4fb2496b3b66741db4013a2c89e91986/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f506f737467726553514c2d3331363139323f7374796c653d666f722d7468652d6261646765266c6f676f3d706f737467726573716c266c6f676f436f6c6f723d7768697465)![wikidata](https://img.shields.io/badge/Wikidata-006699.svg?style=for-the-badge&logo=Wikidata&logoColor=blakc)![NASA](https://img.shields.io/badge/NASA-E03C31.svg?style=for-the-badge&logo=NASA&logoColor=white)


# Galactic_DB

### User Story
> Create a database of planetary systems leveraging PostgreSQL.

This GitHub repository contains a PostgreSQL database of celestial bodies that was built as part of the FreeCodeCamp Relational Databases Beta Certificate course. The goal of the project was to create a sample database that includes the main celestial bodies such as galaxies, stars, planets, and moons, along with an additional table for different planet types and their descriptions.

## Database Structure

The celestial bodies database includes a separate table for each type of celestial body, as well as a table for planet types. Each table includes relevant information about the celestial bodies, such as name, distance, radius, and orbital period. Relationships between the tables were established to allow for easier navigation and querying of the data. The relationships follow the hierarchy of celestial bodies: galaxies contain stars, stars contain planets, and planets contain moons.

## Research

To create the celestial bodies database, research was conducted to identify the main variables to track for each celestial body. The research was based on sources such as Wikipedia and astronomy websites, and focused on values such as mean radius, distance in light years, and orbital period. Due to a lack of information or distance from some celestial bodies, some values in the database are null, and others were rounded to 2 or 3 decimal places.

## Relational Database Diagram
[DRAW.IO](https://app.diagrams.net/) was used to replicate the database.

> Data Conceptual Model (DCM)

![DCM_of_the_database](https://github.com/z-bj/Galactic_DB/blob/master/assets/DUM.jpg)
[DB Dump](https://github.com/z-bj/Galactic_DB/blob/master/universe.sql)


The relational database diagram for the celestial bodies database was created by replicating the database on DRAW.IO The diagram provides a visual representation of the relationships between the tables and the structure of the database.

## Usage

To use the celestial bodies database, simply import the SQL script into PostgreSQL or any other compatible database management system. Once imported, you can query the data to retrieve information about celestial bodies and their characteristics.

## Contributing

Contributions to this project are not currently being accepted. However, if you notice any errors or have suggestions for improvements, please feel free to open an issue or contact me directly.

## License

This project is licensed under the [MIT license](https://opensource.org/licenses/MIT), which means you can use, modify, and distribute the code for any purpose, as long as you include the original copyright and license notice.

<img src="https://github.com/z-bj/galaxy_psql_DB/blob/master/assets/moonparrot.gif" width="36">


