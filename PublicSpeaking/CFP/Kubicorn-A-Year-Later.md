# Abstract

Last year at Gophercon I open sourced a Go program called Kubicorn.
A year later the project has over 1k stars on GitHub and is an official CNCF project.
In this talk we explore the lessons learned of engineering, growing & maintaining the tool.
We also explore what I would have done differently.

# Description


During the 2017 Gophercon hack fest I open sourced a project I had secretly been working on.
I was afraid it would blemish my name in open source as it directly competed with other solutions the community was working on.
The interesting thing about Kubicorn, is that I disagreed with a lot of the paradigms behind other solutions in open source.
Which lead to the creation of the tool in general.
As it turns out, there were a lot of other people in the community who agreed with me and the project has taken off.


## Building the scaffolding

We start the talk off by exploring the first commits to the project.
What did I do when nobody was looking?
What did I focus on?
What did I neglect?

 - I used the Cobra CLI library to layout the foundation of the project.
 - I tried to prevent the `/pkg` antipattern (it failed)
 - I started the world's simplest Makefile
 - I structured the interface/implementation code in a seemingly sane way, that ended up causing cyclical imports downstream
 - I didn't test anything
 - I didn't comment anything
 - But it worked, and is still working

## The first wave of contributions  (Gophercon 2017)

After clicking the "make this repository public" button at Gophercon I instantly began to notice the amount of work that needed to be done.
I also noticed how the program was almost working.
I pushed toward "right now" and less on "right".

 - The project was all over reddit within minutes
 - We all sat around a table and began to hack on various aspects of the program
 - The first problem was solving vendor dependencies (luckily we could walk over to the dep table)
 - The next problem was documenting the responsibility of each package (people began to add logic to packages that didn't really fit, there was a fear of creating new packages)
 - Ever package had a "New()" function - this started to feel weird
 - All struct fields were exported (this caused problems downstream)
 - This is where we first starting noticing we needed a Posix compliant signal handler, and there wasn't a readily available one in Go (we wrote one)


## Looking back

We basically ended up writing a framework in Go

 - We wrote a custom logger
 - We wrote a retry package
 - We wrote an SCP package
 - We wrote a Posix compliant signal handler
 - We are on the verge of releasing our first stable release (maybe release at Gophercon 2018)

Our implementations in Go are okay, but they aren't great.

## The takeway

There is relatively small amounts of custom logic for the program itself.
Most of the repository is supporting code to help bring the project to life.
We started using the supporting code in other ways and in other projects.
So we inadvertently built two projects in one, a Kubernetes deployment tool, and a framework in Go.
It took over a year of open source to get the project where it is today, and looking back I think it would be wiser to have used more open source solutions.
In the case of them not being available I would like to start pulling the `kubicorn` framework out into smaller subprojects so others can use the code.
We need to encourage more modular code design both in the Go community and in Kubernetes.
Lots of small meaningful packages might be a good thing.



