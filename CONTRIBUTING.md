# How to write an amendment

This guide is not intended for the constitutional side of how to write an amendment, but instead for the `git` and `LaTeX` side of writing the amendment.

## 1. Background

First of all, make sure you've gone through the following things:

* you've read the most up-to-date constitution, this can be found under the [releases tab](https://github.com/RITFIRSTRobotics/constitution/releases).
  This will give you the background necessary to write a successful amendment and get it successfully added to the constitution.
* learn how to use git (GitHub has a [good tutorial](https://try.github.io/) to learn `git`, but there are tons of tutorials out there; make sure to learn about committing, branches, and pull requests).
* learn a little about `LaTeX` (Overleaf has an [excellent tutorial](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes) and tons of resources on `LaTeX`).

## 2. Write your amemdment

This is probably the trickiest part of the process.
I'd recommend starting with a printed copy of the current constitution and annotating it to your liking, making detailed and through notes about what you'd like to change.
After you know what you want to change, make a new branch (or fork the repository) and start putting your changes in the `constitution.tex` file.
Be sure to try and use the existing packages/styling (this will lead to less issues down the road).
It's also best practice to put each sentence on a line, this will allow git generate better diffs.

## 3. Proposal

Next, you must propose your amendment to the club at-large, this must be done by following the process outlined in the constitutuion.
Note that the existing constitution is in effect until your amendment passes, so you must follow it's rules.
At this point, you should create a pull request in GitHub to merge your branch/fork into `master` (note that there may be automated tools that generate the necessary PDF files for you).

## 4. Voting and merging

After your amendment has been proposed, it will be voted on (again, see the constitutuion for more details about this process).
If you amendment passes, congratulations!
The process is almost finished, all you need to do is have someone with permission (i.e. the club president) approve your pull request.
