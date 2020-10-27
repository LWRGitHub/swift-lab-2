/*:
# Conditionals in Swift
### The IF Statement
*/
// We want to know how you are doing today.
print("How's it going?")

// Set your current mood as a String below
var mood : String = "Good"

/*:
- experiment:
Use an if statement to check the reply and answer.
If the reply is "Good" print Great!
Otherwise, if you said "Bad", print Oh no!
In all other cases, I reply "I see..."
*/
if mood == "Good"{
    print("Great!")
} else if mood == "bad"{
    print("Oh no!")
} else {
    print("I see...")
}
/*:
### Combining Conditionals
 
Sometimes you will want to do something when more than one condition is true. For example you may only want to grant access to information if both a user name and password match expected values.

The && operator says the expression on the left and the expression on the right must both be true.

For example:
```
if 2 * 2 == 4 && 3 + 3 == 6 {
 // Run this block because both expressions are true!
}
```
*/
/*:
 - experiment:
Write an if statement that uses a && to compare the mood and the time. You should only reply Great! when you're in a good mood and the time is greater than 7. Imagine this is AM! It's hard to be in a "Great!" mood before 7am.
If the time  > 7 and mood is Good then print Great!
*/
var time : Int = 0

if time > 7 && mood == "Good"{
    print("Great!")
}

/*:
Everyone says it's great when work is over, despite their mood.
In this case we want to reply "Great!" when your mood is "Good" or the time is greater than 17 (5pm).
You can create conditionals that do this like this:

expressionA || expressionB

Here the statement is true when expressionA or expressionB is true.

For example:

```
let pet = "bunny"
if pet == "bunny" || pet == "puppy" {
    print("cute")
}
```
*/
/*:
 - experiment:
 Your goal is to write an if statement that prints "Great!" when mood is "Good" or time >  17.

 Test your work by setting the values for mood and time to different values.
*/
if mood == "Good" || time > 17{
    print("Great!")
}

/*:
### Conditionals and Functions
 We heard you're working on a new messaging app. Emojis are popular with your users. Everyone is using the happy face 😀. You're app wants to capitalize on this, you're a genius!
*/
 /*:
  - experiment:
 Write a function named stringToEmoji that takes a parameter word of type  String and returns a Character. If the word is "happy" return "😀" otherwise return "🤔".
*/
 /*:
 Test your function like this:
 
 ```
 let response1 = stringToEmoji(word: "meh")
 let response2 = stringToEmoji(word: "happy")

 print(response1) // should be 🤔
 print(response2) // should be 😀
 ```
*/
func stringToEmoji(word: String)-> Character{
    if word == "happy"{
        return("😀")
    }else{
        return("🤔")
    }
}

let response1 = stringToEmoji(word: "meh")
print(response1)
let response2 = stringToEmoji(word: "happy")
print(response2)
/*:
The emoji thing went over big with the founders. They want more! People use lots of emojis, this could be big.

Write a new function stringToEmojis that takes word: String as a parameter and returns a Character. The function should look at word and return one of several emojis.

If word is:
```
happy -> "😀"
laughing -> "😆"
cool -> "😎"
otherwise -> "🤔"
```
Test your work by calling the function four times with four different words and print the response. Make sure the response shows each of the four possible emojis.
*/
func stringToEmoji2(word: String)-> Character{
    if word == "happy"{
        return("😀")
    }else if word == "laughing"{
        return("😆")
    }else if word == "cool"{
        return("😎")
    }else{
        return("🤔")
    }
}

let response2nd1 = stringToEmoji2(word: "meh")
print(response2nd1)
let response2nd2 = stringToEmoji2(word: "happy")
print(response2nd2)
let response2nd3 = stringToEmoji2(word: "laughing")
print(response2nd3)
let response2nd4 = stringToEmoji2(word: "cool")
print(response2nd4)




/*:
That emoji function was really good. Everyone is thinks this app will be huge!

But there are a few details that need some work. While the emojis are good, you want to show happy face emoji if the word is good, okay, awesome, lit, or fun.
 ```
 happy, good, okay, awesome, lit, fun  -> "😀"
 laughing -> "😆"
 cool -> "😎"
 otherwise -> "🤔"
 ```
 Write a function in that takes in a word: String and returns a Character. The body of the function should compare the word to the strings above and return the character emoji that matches.

 Test your work for all possible words.
*/
func stringToEmoji3(word: String)-> Character{
    if word == "happy" || word == "good" || word == "okay" || word == "lit" || word == "fun" || word == "awesome"{
        return("😀")
    }else if word == "laughing"{
        return("😆")
    }else if word == "cool"{
        return("😎")
    }else{
        return("🤔")
    }
}

let response3nd1 = stringToEmoji3(word: "happy")
print(response3nd1)
let response3nd2 = stringToEmoji3(word: "good")
print(response3nd2)
let response3nd3 = stringToEmoji3(word: "okay")
print(response3nd3)
let response3nd4 = stringToEmoji3(word: "lit")
print(response3nd4)
let response3nd5 = stringToEmoji3(word: "fun")
print(response3nd5)
let response3nd6 = stringToEmoji3(word: "awesome")
print(response3nd6)

let response3nd7 = stringToEmoji3(word: "meh")
print(response3nd7)
let response3nd8 = stringToEmoji3(word: "laughing")
print(response3nd8)
let response3nd9 = stringToEmoji3(word: "cool")
print(response3nd9)

//: [Next](@next)
