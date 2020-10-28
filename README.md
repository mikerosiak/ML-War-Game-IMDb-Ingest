# ML-War-Game-IMDb-Ingest
MarkLogic war-game for testing MLCP ingestion performance using IMDb movie data

Instructions for running war-game:
1.  Clone this repo to your local machine
1.  Unzip the `IMDb movies.zip` file in the data directory
1.  Edit the `ingest.bat` script as needed for the target environment
1.  Run the `ingest.bat` script from a command prompt
1.  Record timing for Step 1
1.  Edit the `report.bat` script as needed
1.  Run the `report.bat` script
1.  Record the timing for Step 2

Note that deployment is not required for this war-game - it simply uses MLCP to load data to the target MarkLogic environment and ad-hoc CoRB modules for reporting.  Run Step 2 twice in order to warm up the caches, then record the second result time.
