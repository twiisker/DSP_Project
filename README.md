# DSP_Project
Spotify analysis using KMeans to recommend songs &amp; artists

## Spotify data analysis
> Can recommendations for artists/songs be made on the basis of the data?
> Can unknown artists and titles be recommended?

### 01. Database creation

> Application of __sqlite3__ in Python.

- Tables
  - Playlists
  - Playlists Tracks
  - Tracks
  - Artists
  - Features
  - Albums

### 02. Import of JSON data

> Application of __sqlite3, json__ in Python.

Batch loading of JSON data to improve perfomance.

- Imports in:
  - Playlists
  - Artists
  - Tracks
  - Playlist Tracks

### 03. Import data from database

> Application of __sqlite3, pandas__ in Python.

Altering of tables: adding columns.

Import data using `WHERE x = y` - clause in SQL - Query.

### 04. Features import

__BUG:__
The features import didn't work in Python. I used the same SQL - Query and executed in SQLite Studio.

### 05. Playlist Exploration

> Application of __sqlite3, pandas, numpy, matploit, seaborn__.

- check for missing values.
- convert UNIX - Timestamp to date using pandas.

average tracks per playlist: 66,80
median tracks per playlist: 50
more than 1 follower: 6097 out of 18659

### 06. Features Exploration

> Application of __sqlite3, pandas, numpy, matploit, seaborn__.

- check for missing values
  - fill missing values using the Spotify WebAPI

Correlation analysis using `sns.heatmap`.

- One Hot Encoding of Genres
  - using `pandas explode` methode to unpack list of genres
  - create column for each genre, indicating with $1$ or $0$

- Elbow Method
  - to finde best suited amount of clusters.

- Model Tuning

- Calculate each cluster

### 07. Tracks Exploration

> Application of __sqlite3, pandas__.

- check for missing values
  - fill missing values using the Spotify WebAPI
- convert track duration from `ms` to `s`.

### 08. Artist Exploration

> Application of __sqlite3, pandas__

- check for missing values
  - fill missing values using the Spotify WebAPI
### 09. Artist Clustering

> Application of __sqlite3, pandas, matploit, seaborn, sklearn__

- Scaling of numerical features:
  - standard scaling using `sklearn.preprocessing StandardScaler`.

- One Hot Encoding of Genres
  - using `pandas explode` methode to unpack list of genres
  - create column for each genre, indicating with $1$ or $0$

- Elbow Method
  - to finde best suited amount of clusters.

- Model Tuning

- Calculate each cluster
