# cyclistic-case-study
#### Author: Syeda Dayemi

## Introduction
For my Google Data Analytics Course Final Case Study, I decided to choose the Cyclistic path. This is a scenario using a fake company, Cyclistics, based around real data from Divvy bikes from Chicago.

Cyclistic wanted to convert more casual riders of the bikes to become members.

I specifically wanted to clean the data in Excel, analyze the data in SQL, and publish charts and graphs using Tableau.

Unfortunately, the files were too large for Excel, and BigQuery, which is where I was using SQL. Instead of figuring out a way to do all of it in SQL, I did some of it in Excel and some of it in SQL.

I was asked to follow the Ask, Prepare, Process, Analyze, Share, and Act.

## Ask
I was assigned the question: How do annual members and casual riders use Cyclistic bikes differently?

## Prepare
I was given the bike data from Nov 2021 to Oct 2022. The data was retrieved from https://divvy-tripdata.s3.amazonaws.com/index.html. The data was made available by Motivate International Inc. Each month had its own CSV file.

## Process
This part got a bit messy and took a bit of time since the files were so large and I didn't have the systems to handle that.

Overall, I checked the files individually in Excel. I checked for duplicates for the ride_id (which would be check again in SQL later) and removed those. I also went through each column to double check nothing was misspelled.

Before shifting them out of Excel to SQL, I created two new columns, one for ride_length and another for day_of_week.

```
=ended_at-started_at

=WEEKDAY(started_at,1)
```

I also filtered out ride_lengths taht were negative and didn't make sense. I wanted to disclude them so I left them as blank so I can filter them out as null in SQL.

I officially pulled them out of Excel and into SQL.

```


## Analyze


## Share


### Act
