--input
{"headers":{"Person":["personId","lastName","firstName"],"Address":["addressId","personId","city","state"]},"rows":{"Person":[[1,"Wang","Allen"],[2,"Alice","Bob"]],
"Address":[[1,2,"New York City","New York"],[2,3,"Leetcode","California"]]}}
--code
select firstName, lastName,city,state from Person left join Address on Person.PersonId = Address.PersonId;