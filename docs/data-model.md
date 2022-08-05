( will contain a description of the domain or database schema with the properties that you'll collect with their data types; describe the entities/value objects that we're storing in the database)

# Data models
Entity: Account model

# second level heading ; 

(include the markdowntable for the entity/value object with these specific columns for each property
-name of property
-type of property; [data type like string or can be reference to a different object]
-if its unique for each entity/value object
-if its an optional value
)

## Account
| Name | Type | Unique | Optional |
|-|-|-|-|
|username| string | yes | no |
|password| string | no | no |
|first_name| string | no | no |
|last_name| string | no | no |
|email| string | yes | no |
|coins| integer | no | no |
|picture_url| string | no | no |