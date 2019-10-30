# ChainMore
The prototype of ChainMore（阡陌），a platform of sharing and managing interests and knowledge.

# Overview
This project consists of three main parts:
* [WEB](https://github.com/kleon1024/ChainMore-WEB-Vue) : based on Vue.js
* [APP](https://github.com/kleon1024/ChainMore-APP-Flutter) : based on Flutter
* [API](https://github.com/kleon1024/ChainMore-API-Flask) : based on Flask

# Design

## Links and domains
In the first iteration, links, aka. urls, and domains are first-class objects. We can share links and leave comments. 

Links belong to their own domains which are not isolated but connected in two different ways. 

* One is the parent-childen relationship, in which children's resources are aggregated into their parents (The top domain is an exception). 

* The other is the dependent relationship, in which a domain must have at least one dependent domain (The primary domain is an exception). 

Based on these two relationships, complicated participation and authentication rules can be made and used to restrict the permissions of a domain. 

| Permission                      | Access    | Notice    | Participate | Manage    |
| ---                             | ---       | ---       | ---         | ---       |
| Unregistered                    | Limited   | Denied    | Denied      | Denied    |
| Registered                      | Permitted | Permitted | Denied      | Denied    |
| Dependent domains authenticated | Permitted | Permitted | Permitted   | Denied    |
| Current domain authenticated    | Permitted | Permitted | Permitted   | Permitted |

* Access: All public contents of a domain is avaiable to everyone.
* Notice: The actions won't produce negative side-effects to the domain environement, such as upvoting posts and following domains.
* Participate: The actions contribute contents to the domain, such as posting new resources, comments posts.
* Manage: The actions change the domain, such as starting votes to change domain title, authentication rules and dependent domains or merge with other domains.

A special rule of authentication is: before you start any authentication progress, you must get the authentication of the primary domain.

Those permissions may seem a little bit complicated at the first, but they are designed for a better community environment for every neighbor.