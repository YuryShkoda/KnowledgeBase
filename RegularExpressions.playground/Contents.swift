/*
                                Regular Expressions
    [csm]at  - a ‘c’, an ’s’, or an ‘m’, followed by 'at'
    [a-z]at  - for any letter followed by 'at'
    [A-Za-z]at
    [A-Za-z_][A-Za-z0-9_]*  - regex for varible name (* -0...| + - 1...| 0...1)
    colou?r  - will match color and colour
    [0-9]{3}-[0-9]{4}  - will match 111-1111
    [^0-9]  - 'not' a number
    [a-z]{1,3}  - match 1,2 or 3 letters
    [a-z]{3,0}  - match 3 or more
    .   - any single characer except line break (c.t match cat)
    .*  - “match one or more of anything that isn’t a line break
    ^  - anchor for the begining of the line (^W.*)
    $  - anchor for the end of the line (.*g$)
    \w  - any word character, equel to [A-Za-z0-9_] ([A-Za-z0-9_]* and \w* are indentical)
    \W  - the opposite of any word character
    \d  - any digit
    \D  - any non-digit
    \s  - any whitespace
    \S  - any non-whitespace
    \b  - word boundery
    \B  - non-word boundery
    ()  - grouping
    (|) - group alternatives (I like (paintings|sculptures) by \w+)
    .*? - match this thing as few times as possible
    ([\*\/_]).*?\1  - That means “match either *, /, or _ as group one, then anything, then another of the same character that was matched in group one.
    (\w)\1  - back reference
    \b(\w+) \1\b  - back reference
    \w+a(?=,) - positive lookahead
    \w+ \w+ is (?!alive) - negative lookahead
    \w+ \w+ is (?!alive)(.*) - match groups
    My favorite (?:movie|film) is (.*) - non-matching groups
    https?:\/\/[^ ]+  ->  <a href="$0">$0</a> - replacing with matched groups ($0 -full match)
    (.*): (.*)  ->  <p><strong>$1</strong>: "$2"</p> - replacing with matched groups ($1, $1 -group match)
    grep -o "buy.html?type=\d" server.log | sort | uniq -c   - using "grep" with regex
    egrep - grep with extended regular expressions (-E)
 
    The app has (\d+) tabs?.
    The app has the icon "([^"]+)"
    raw (\d+) has an? (\w+) background
    the (left|right|center|centre) bar button has the title "([^"]+)"
 
    ".*?"
    \d+\. [\w ]+
 
    1. \w* for myVariable
    2. \d{3}-\d{4} for 111-1111
    3. ^[A-Z][a-z]]+ [A-Z][a-z]+ for Yurec
    4. \d{1}-?\d{6}-?\d{2}-?\d{1} for 1-111111-11-1
 
 */
