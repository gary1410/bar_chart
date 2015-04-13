BAR_CHART
==============

This displays a bar chart using ChartKick as it's main charting tool.

Tests
-----

```sh
	rspec spec
```
I focused on two tests.
1.  The first test tests the Ben vs. the Average Cost per Bandwitdh
2.  The second test tests whether or not the array that is being build for ChartKick is actually being build


Setup
-----

seed the files if given to you:

#####For
```
seed.sql
```
```sh
psql -U garytsai -d bar_chart_development < ~/your_location_of_file/seed.sql
```
#####For
```
seed.js
```


```sh
    .......Get into the mongo shell......
$  mongo
....

    .......In the Mongo shell make sure you use the correct DB....

$ use bar_chart_development
    
    ......Insert your collection......
    
$  db.organizations.insert([{ 
"name" : "Cascade Middle School",
  "ben" : "114619",
  "purchases": [
    { bandwidth: 1000, measure: "t", cost: 90 },
    ....
    ....
}]
```

Key Technologies
----------------
* Postgres - SQL DataStore
* MongoDB - NoSQL DocumentStore
* ChartKick - Gem for Charts in Ruby (http://chartkick.com/)

