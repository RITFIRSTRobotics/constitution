# How to write an amendment

This guide is not intended for the constitutional side of how to write an amendment, but instead for the `git` and `LaTeX` side of writing the amendment.

## A note: the output of automated builds

This project is setup to automatically build a PDF on every push to any branch of the repostiory.
It should be noted that these PDFs are the "official" PDFs and should be saved internally and distrbuted to club members (whenever necessary).
In order to get the PDFs, first go to the [Actions tab](https://github.com/RITFIRSTRobotics/constitution/actions), pick the [Build PDF workflow](https://github.com/RITFIRSTRobotics/constitution/actions?query=workflow%3A%22Build+PDF%22), then pick a commit (note that the output files will represent the changes made in this commit only), and finally download the constitution artifact.

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
And make sure to put your name in the section of authors!

## 3. Proposal

Next, you must propose your amendment to the club at-large, this must be done by following the process outlined in the constitutuion.
Note that the existing constitution is in effect until your amendment passes, so you must follow it's rules.
At this point, you should create a pull request in GitHub to merge your branch/fork into `master` (note that there may be automated tools that generate the necessary PDF files for you).

## 4. Voting and merging

After your amendment has been proposed, it will be voted on (again, see the constitutuion for more details about this process).
If you amendment passes, congratulations!
The process is almost finished, most of the work now needs to be done by a club administration member (someone with administrator rights on GitHub).
Either you or the club administration member will need to put the amendment information into the Enabling Clause (Amendment Number, Name, and date passed) and commit this to the branch/fork that the pull request is based on.
Next, you should wait for the automated build to finish and you should double-check to ensure that everything looks right (besides the watermark).
Now, you're ready to merge the changes into `master`, which can be done by the club administation member by approving the pull request.
Finally, the club administration member should [make a new release](https://github.com/RITFIRSTRobotics/constitution/releases/new) and wait for the automated build to finish (make sure that the version info looks like `v#.#-0-gcommit`).
The new constitution is now official and can be distributed wherever necessary.
