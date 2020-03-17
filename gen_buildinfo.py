# Generates build information for LaTeX
#
# @author Connor Henley, @thatging3rkid
import datetime
import subprocess

def main():
    # first, print some debugging infro
    print("%%% buildinfo.tex\n%%%\n%%% Generated by gen_buildinfo.py on " + str(datetime.datetime.now()) + "\n")

    # next, get the git hash and tags
    git_hash = "*error*"
    git_version = "*version\\_error*"
    try:
        git_hash = subprocess.check_output(["git", "rev-parse", "--short", "HEAD"]).strip().decode("utf-8")
        git_version = subprocess.check_output(["git", "describe", "--tags"]).strip().decode("utf-8")
    except:
        pass

    # finally, print the footers
    print("\\lfoot{git: \\texttt{"+ git_hash +"} on \\texttt{" + git_version + "}}")
    print("\\rfoot{\\today}")


if __name__ == "__main__":
    main()
