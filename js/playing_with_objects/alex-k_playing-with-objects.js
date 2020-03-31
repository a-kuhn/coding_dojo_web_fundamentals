
//1. How would you print/log John's age?
//2. How would you print/log the name of the first object?
//3. How would you print/log the name and age of each user using a for loop?

var users = [{name: "Michael", age:37}, {name: "John", age:30}, {name: "David", age:27}];

/*1*/ console.log(users[1].age)

/*2*/ console.log(users[0])

/*3*/   for (var user in users){
            console.log(`${users[user].name} - ${users[user].age}`)
        }   
