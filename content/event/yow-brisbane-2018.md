+++
date = "2018-12-3"
archive = ["2018-12-3", "2018", "2018-12"]
title = "YOW! Conference Brisbane"
description = "This wonderful event"
author = "Dave Cheney"
subtitle = "Lessons learned building Kubernetes controllers"
slug = "yow-conference-brisbane-2018"
tags = ["Kubernetes", "k8s", "ingress", "contour", "ingressroute"]
+++

In this talk I'll discuss my experiences building Kubernetes controllers using as a case study [Contour](https://heptio.com/products/#heptio-contour), a new Kubernetes Ingress controller, that I've been working on since joining Heptio.

This presentation will cover:

 - What an ingress controller is and what role it plays in a Kubernetes cluster.
 - Why Heptio chose Lyft's Envoy proxy as the data plane for our ingress controller.
 - How Contour works as a translator from Kubernetes to Envoy. The parts that were a good match, the parts that weren’t, and how we dealt with it.
 - How to develop a component of an interactive system like Kubernetes while avoiding the dreaded compile/push/deploy time sink.

This presentation is suited for developers and operators with experience in Go and or Kubernetes who wish to extend the capabilities of their Kubernetes clusters.
If you're interested in Go, Kubernetes, or cloud native software development, there's something in this talk for you.

 * [Link to event page](https://brisbane.yowconference.com.au/)
