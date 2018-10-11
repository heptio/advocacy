+++
date = "2018-11-24"
archive = ["2018-11-24", "2018", "2018-11"]
title = "GDG DevFest 2018, Melbourne"
description = "This wonderful event"
author = "Dave Cheney"
subtitle = "Addressing the limitations of Kubernetes' Ingress object"
slug = "gdg-devfest-2018"
tags = ["Kubernetes", "k8s", "ingress", "contour", "ingressroute"]]
+++

The Kubernetes Ingress object has a number of limitations which over the years have been papered over with annotations.
Contour, the Ingress controller my team at Heptio are building, recently introduced a new Ingress object which addresses the existing limitations and unlocks the ability for teams and operators to have more control over ingress deployments in multi team and multi tenant scenarios.
In this short talk I'll explain the limitations of the current ingress object and how our new Ingress object addresses those shortcomings while making it possible for multiple teams to collaborate and delegate responsibility using various routing patterns and strategies that our new Ingress object makes possible.

 * [Link to event page](https://devfest.gdgcloud.melbourne/schedule/)
