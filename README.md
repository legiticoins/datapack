# WWLC Datapack

## Setup
Make an account on the [dashboard](https://wwlc.legiti.dev/) and submit your world for verification. after submitting, notify a dev in the WWLC legitidevs channel

### Job creation
Create a job on the dashboard:

name - whatever, should be prefixed with world name to avoid conflicts

amount - LC Amount

type - "buy" is a reward (LC is transferred from world to user), "sell" is the opposite


copy your job token by pressing the non descriptive square on the dashboard and get your job id (job name but hyphenated, ie WWLC sell diamond sword -> wwlc-sell-diamond-sword)

register the job by running `/function wwlc:add_job {id:"job-id",token:"job-token-copied-from-dashboard",type:"buy-or-sell"}` (run this once, in chat!)

## Transactions
A transaction is any transfer of LC between the world and the user

to create a transaction, run `/function wwlc:transaction {id:"job-id"}` as the user involved in the transaction

the amount and type of the transaction are decided by the job

as mentioned previously, "sell" transfers the amount LC from the user to the world and "sell" does the opposite

the user will be prompted to verify the transaction on the dashboard and the datapack will start polling for the transaction status

## Polling
idk man someone help