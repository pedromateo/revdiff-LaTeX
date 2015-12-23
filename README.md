# revdiff: A LaTeX revision and diff package



**revdiff** was created to build diff documents with which authors
can **ease the work of reviewers** by marking changes in the text, adding
tags and adding comments.


## Usage

* `\rlegend` prints built-in legend text.
* `\rnew{this is new text}` for text additions.
* `\rold{this is old text}` for text deletions.
* `\rchange{This is an}{inline change}` is similar to `\rnew` and `\rold`, but in one command.
* `\rcomment{This is a comment}` to add comments.
* `\rtag{a tag}` to add tags to the text.

Check the result of using these commands [here >>](https://github.com/pedromateo/latex_revdiff/blob/master/test.pdf)

## Wanna help?

TODO list:

* tag index including links to tags. Index is created by using
  {{{\rtagindex}}} command. 




