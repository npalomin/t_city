Log
================
2022-06-22

Original Publish Date: 2022-06-22 <br> Updated on: 2022-06-22

## WP 1, Kick-off meeting

date: 2022-06-22

-   Connecting cities, interconnectivity

-   Relevant for others using the data

-   Spatial unit of analysis: is the grid and then is mapped to the
    streets

-   Problems: Air quality modelling data 20x20 grid (highest
    resolution), not connected to anything (good to look at streets and
    park areas)

-   How can our own grid be created? Limitations?

-   Moving data is not necessarily an issue. high resolution,
    low-resolution jump between urban/rural areas

-   Avoid processing time and not lose resolution level

-   How is the grid produced? How can other people use it?

-   The main thing is researching other ones that would be relevant.

-   Tiling systems (e.g. Google Maps, OSM), maybe look at OGC standards.

-   No visualisations yet

-   How can TC contribute to OSM? This would be a pro

references:

-   <https://www.ogc.org/>

-   <https://h3geo.org/docs/core-library/>

-   <https://wiki.openstreetmap.org/wiki/H3>

## Project Brief

**Worldwide Database Creation Model**

**Data Gathering Automation Work Packages**

June 2022

Dear Nicolas,

Thank you for meeting to talk through the data gathering automation
process we are currently working on. As discussed, please find below an
outline of the work packages we would like your support on and an
approximate time/cost estimate based on our team day rates.

Please review the scope and let us know if you have any comments,
questions or changes. We would like to begin this work within the next
month (beginning before end of June) if feasible.

**Work Package 1** - Research into worldwide grid framework (1 days)

-   Meeting to outline our method and scaling plan (1 hour meeting)
-   Research into suitable worldwide grid reference systems.
    -   Current grid: 20m x 20m
    -   Uber Hexagonal Grid
    -   Whatthreewords (3m grid) 21m x 21m grid
    -   Others?
-   Shortlist the 5 most suitable options.
-   Outline the pros and cons for each in short document.

*Estimated budget: £300 (at £300 per day)*

**Work Package 2** - Create OSM Data Processing Script (5 days)

-   Meeting to outline requirements and method (1 hour meeting)
-   Create script to perform the following:
    -   Create Grid for defined boundary area (as per most suitable
        format)
    -   Retrieve OSM layer data
    -   Filter OSM data to select specific layers
    -   Clean overlapping features
    -   Calculate total size of each feature
    -   Intersect with grid
    -   Calculate the area of each feature in each grid square
    -   Package result in CSV with WKT geometry (EPSG 4326)
-   Create basic documentation to demonstrate use, maintenance and
    updates.
-   Meeting to present work (2 hour meeting)

*Estimated budget: £1500 (at £300 per day)*

**Work Packages 3 & 4** - Satellite Data & Noise data

*TBC following the completion of the above work packages.*

In order to instruct work packages 1-4, we’ll request you to sign an NDA
and agree to our Terms & Conditions. This will basically require the
methods and outputs to this work to be the IP of Tranquil City Ltd and
knowledge not shared unless with prior approval from us.
