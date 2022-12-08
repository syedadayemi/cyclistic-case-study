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

Overall, I checked the files individually in Excel. I checked for duplicates for the ride_id (which would be check again in SQL later) and removed those. I also went through each column to double check nothing was misspelled by filtering each column.

Before shifting them out of Excel to SQL, I created two new columns, one for ride_length and another for day_of_week.

```
=ended_at-started_at

=WEEKDAY(started_at,1)
```

I also filtered out ride_lengths taht were negative and didn't make sense. I wanted to disclude them so I left them as blank so I can filter them out as null in SQL.

I officially pulled them out of Excel and into SQL and combined all the tables into one.

## Analyze


## Share
All the visuals that I did are on Tableau at https://public.tableau.com/views/CyclisticCaseStudy_16702916011230/EndMap?:language=en-US&:display_count=n&:origin=viz_share_link.

## Act
I was to give my top three recomendations to convert casual riders to members from my findings.

There are a couple of differences that I noted between members and casual riders.

- While there are more members using classic and electric bikes, only casual riders seem to use the docked bikes.
- Members and Casual Riders tend to use bikes the same amount during the weekends, they increase their usage during the weekdays while Casual Riders tend to decrease usage.
- While they both hit their lowest in January, Members hit their peak in August and Casual Riders hit their peak in July.
- While Majority of the Member and Casual trips are under an hour, Casual Trips are more likely to last longer than an hour.
- When looking at the top twenty routes for each type of rider, Casual Riders had way more instances where they returned the bikes at the exact station they recieved them.

#### Recomendations
My top three recomendations to increase the amount of annual memberships are:

- Since Casual Riders are more likely to return to the same station, this might mean that they don't have an extensive knowledge on the location of stations. If Cyclistic has an app, it would be helpful in letting riders know where the locations of the stations are and if they are in proximity, to make it easier for the riders to find.
- Since there seem to be a huge decrease of riders during the holidays, it would be hlepful to have holiday deals.
- There are less casual riders during the weekdays than weekends so it might be ideal to add levels of memberships, such as one able to be used just for the weekends or weekdays, or maybe even just the summer or winter.
