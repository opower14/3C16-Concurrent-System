# Practical Three - Part 2


Note: Part1 is described in `READMEp1.md`.

## Part 2 Objective

The object of Part 2 of Practical3, worth 15 marks,
is to add Promela statements to file `impl.pml`
that results in (almost?) all the LTL specifications `spec.pml` being satisfied.


## Part 2 Contents

Practical3 as distributed only contains the following:

* `READMEp1.md` - part 1 documentation
* `P3Model.pml` - promela model mainline 

For Part2 you need to download the following and place them in the Practical3 folder

* `READMEp2.md` - this document
* `P3SpecImpl.pml` - promela spec and implementation mainline
  

## Part 2 Setup

You should run `makex3p2-*` from the directory containing this one (`Practical3/`).  **Make sure that your student-id in `makex.conf` is correct**


## Part 2 Making

Running `makex3p2` results in the following files being added:

* `spec.pml` contains a number of LTL properties
* `impl.pml` is a skeleton implementation.
* `chkall` is a script that checks all the specifications.

## Part 2 Running

The usual SPIN commands from Part 1 can be used here.

To check a specific named LTL specification formula
(e.g. `spec1`), use:

```
spin -run -ltl spec1 P3SpecImpl.pml
```

To run all the checks, use something like (Linux/OSX):

```
source chkall
```

## Part 2 Task


Your task is to modify `impl.pml` (only) to build a Promela model that satisfies most of the LTL formulae.

## Part 1 Submission

Simply submit `impl.pml`.

