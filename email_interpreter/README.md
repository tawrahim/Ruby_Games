# Description
In this project we I am going to try to take a list of email addresses and split the local and domain portions of the address.
That sounds like a useful and simple objective, but in doing so, we will have to build several aspects - taking a list and splitting out individual 
values, parsing an individual value, extracting the username and domain name of the email address and checking for validity. Sounds simple!

For maximum learning, the problem is solved  without regex and without in-built split functions.

In a typical input from the text box, we expect a comma separated list of email addresses. Such as, 
" john@google.com, jake@yahoo.com, andrew@hotmail.com". Given this input, we should be able to take out 
"john", "google.com", "jake", "yahoo.com" and "andrew", "hotmail.com".

But we must also take care to handle erroneous inputs, like " john@google.com,,123@, spaces are here.com, andrew@hotmail.com". 

This is how the problem would be solved
1. First, we obtain a string of all the email addresses from the user.
2. From this string, the addresses separated by comma are extracted.
3. For each of these addresses, the local and domain portions of the email address are extracted if they are proper valid inputs.

## Ruby skills that were utilized
String, loops, conditions, Array

## Usage
To try it out, follow the following steps and modify the method call, as usual I hope that you also learn something from this project
```bash
$ cd ~
$ git clone git@github.com:tawrahim/Ruby_Games.git
$ cd email_interpreter
$ vim email_interpreter.rb 
$ ruby email_interpreter.rb 
```

## License

Copyright © Tawheed Abdul-Raheem - 2013.  MIT License.  See LICENSE for details.

