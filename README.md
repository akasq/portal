# akasq portal

The akasq (https://www.akasq.org) portal allows users to learn about, and interact with, aspects of the akasq project.

## Installation

Requires:
- python 3.x (x >= 6)
- A PostgreSQL database server, 9.x or later

For quick setup:
- Using [pip](https://pip.pypa.io/en/stable/), run `pip3 install -r requirements.txt` to install required packages
- Create a user account and password, and an empty akasq portal database, in your PostgreSQL server
- Set the environment variables (see Database Configuration) for your PostgreSQL account
- Run `python3 manage.py migrate` to populate your initial database

## Database Configuratoin

The credentials for the PostgreSQL database server are determined by the following environments variables:

| Variable Name | Default Value  | Meaning  |
|---|---|---|
| `DB_HOST` | 127.0.0.1 | The hostname of the PostgreSQL server |
| `DB_PORT` | 5432 | The port number of the PostgreSQL server  |
| `DB_NAME` | `akasq` | The databse name of the akasq portal database |
| `DB_USER` | `akasq` | The PostgreSQL username used to access the akasq portal database |
| `DB_PASS` | `password` | The PostgreSQL user account password required to access the akasq portal database |

## Usage

Run

```
python3 manage.py runserver
```

to start the akasq portal running at http://127.0.0.1:8000/

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[GNU GPL v3.0](https://choosealicense.com/licenses/gpl-3.0/)
