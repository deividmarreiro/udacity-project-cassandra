# Project: Data Modeling with Apache Cassandra 🚀

- [project rubric](https://review.udacity.com/#!/rubrics/2475/view) 📘

> Note: You don't need to use the docker on this project to run it. Was just used to be easier to just clone and run. 😊

This *Udacity Data Engineering Nanodegree* project to create an database to a music app *Sparkify*. We'll use Cassandra as our database and the modeling of the tables is to answer the queries bellow:

  1.  `artist`, `song`(is the name/title of it) and song's `length` (aka durattion) for `sessionId=338` and `itemInSession=4`
  2. `songinfo_by_user_by_session` includes artist, song and user for a given `userId` and `sessionId`
  3. `userinfo_by_song` includes user names for a given song.

And all the pre processing, pipeline and modeling is in a single jupyter notebook.

## Data Processing, ETL pipeline and Modeling 🪛

1. ### Processing
    The data are partitioned by date on the `event_data` folder.
    And the processing will read all the partitioned csv files and unify the data in a single file called `event_datafile_new.csv` on the `output_data` folder.

2. ### ETL Pipeline
   The cells right after the creation of the table on the jupyter notebook will run a insert on this table from the `event_datafile_new.csv` based on the queries mentioned on the earlier section.

3. ### Modeling
   Occurs on the ETL pipeline, but just to justify the modeling. The tables are maded to answer the questions maded on by the queries. This approach is to gain performance and the easy understand, for just seeing the name of the table you know what his purpouse and what he answer.

## Run the project 💿

With the `make` command run the command bellow:


```sh
# Build the docker containers and run the prject
make run
```

Connect to the Jupyter notebook: [`http://localhost:8888/?token=jupyter_token`](http://localhost:8888/?token=jupyter_token)

Finally, when you finish drop the containers.

```sh
# Will stop the containers running
make stop
```

> Note: If you want to delete the images generated on this project, run the command bellow
```sh 
make drop
```

That's all folks! 🫡