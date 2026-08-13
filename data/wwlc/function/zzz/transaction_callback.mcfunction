execute store result score $status_code wwlc.temp run data get storage wwlc:http_response TransactionResponse.status_code

# buy types are auto approved so dont prompt this
tellraw @p[tag=transactionman] {text: "You will now have to approve this transaction.", color:"yellow"}
tellraw @p[tag=transactionman] {text: "Click here to access your dashboard", click_event: {action: "open_url", url: "https://wwlc.legiti.dev/dashboard/transactions"}}
tag @p[tag=transactionman] remove transactionman

# should poll for transactions once status is rejected or approved stop polling and run some kinda callback

schedule function wwlc:zzz/poll 20

## polling function
# scoreboard players set .should_poll wwlc.temp 1
# execute if <status: "pending"> run return run schedule function wwlc:zzz/poll 20