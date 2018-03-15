# Infrastructure Testing with Go

## Abstract

The cloud has empowered software engineers to begin expanding their domain into the lower level infrastructure components of the stack.
In this talk we draw on 2 years of experience in open source as we explore the new and interesting challenges in programmatically testing these layers with Go.


## Description

As infrastructure slowly fades into the background, infrastructure engineers are realizing they are in fact Software Engineers.
The discipline of infrastructure management is not going away, it's merely changing it's shape.

In this talk we learn about Cloud Native infrastructure management tools such as Terraform, Kops, and Kubicorn which are all written in Go.
We learn common approaches and patterns for managing and mutating infrastructure.
We then learn the one common thread that all infrastructure management tools are missing...
Which is reliable infrastructure tests.


### Building the Scaffolding

- Distributed execution and reporting

Testing infrastructure implies that we will need to run remote tests on various systems.
We then need to report our findings back to a centralized location.
Here we learn how gRPC has helped unify remote infrastructure with a local client.

- Network awareness

Introducing confidence that your network is working as expected is a terrifying task.
Here we look at our approach at coding in basic networking tools such as `arp` scanning and socket detection with Go.

- System awareness

Measuring the state of a system can be hard, but Go makes it easy.
We show examples of how the Go standard library gives us valuable input into the state of Unix based systems.
We will look at pulling data out of the kernel using the `syscall` package, and doing memory diagnostic with Go's internal memory functions

- Supporting software awareness

We learn how Go gives us an ability to query our system to see which underlying software is running to support our system.
Here we look at concurrent monitoring of underlay tools such as `containerd` and `systemd`.

### Tying it together with Go

- Breaking the "e2e" paradigm

In traditional testing we would ensure that the state of a system or application is as intended at a single moment in time.
As long as that state appears to be what we defined, the tests pass.

Infrastructure is much more challenging to test as it can mutate over time (and usually does).
Here we look at taking the powerful libraries discussed in the previous section and tying it together as a service with Go.

- Building resilient tests

The system has to be self healing and extremely resilient.
We look at tools like the Kubernetes scheduler for ensuring our infrastructure testing code is running as intended.
We use Kubernetes as a "kernel" for our infrastructure tests.
We ensure that our tests continue to run, far after the "build pipeline" step of the process has completed.

### Conclusion

Go gives us a fantastic and rich toolchain for building web based applications, and for the first time we see Go push the boundaries even further as we use it for infrastructure testing applications.
We encourage users to explore common testing patterns found in other Go tests, and apply them (as software) to infrastructure testing.
We then take it a step further and encourage users to run this as a service over time.

The audience should walk away feeling excited, and inspired to begin using Go to test parts of the stack they never thought they could.



## Notes