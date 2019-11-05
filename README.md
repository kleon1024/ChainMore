# ChainMore
The prototype of ChainMore（阡陌），a community of sharing and managing interests and knowledge.

# Overview
This project consists of three main parts:
* [WEB](https://github.com/kleon1024/ChainMore-WEB-Vue) : currently based on Vue.js
* [APP](https://github.com/kleon1024/ChainMore-APP-Flutter) : currently based on Flutter
* [API](https://github.com/kleon1024/ChainMore-API-Flask) : currently based on Flask

# Design

## Domain

Domains aggregate users, posts or any other basic components. Domains are not isolated but connected in two ways:

* One is the parent-childen relationship, in which children's resources are aggregated into their parents (The top domain is an exception). 

* The other is the dependent relationship, in which a domain must have at least one dependent domain (The primary domain is an exception). 

### Permission

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

### Rule

Managers of a domain can make rules which influences how to filter posts, how to vote on changes of domain.

## Post

Posts are the most basic carrier of any kinds of public and static information.

### Format

A post can have many formats:

* Article: Long Text
* Message: Short Text
* Link Share: Short Text with a Main Link
  * In app, it would open the link directly wrapping with a drawer of comments and actions.
* Picture: *
* Video: *
* Comment: A special post with reply information.

Considering costs of servers and cdns, only Link Share is recommended (and supported).

We use category tags distinguish posts from each other.

* article
* share
* image
* video
* book
* free

### Scene

What would people share? 
A good resource? Send a web link. 
A sparkle of a great idea? Send a quick message.
An impulse of expressing emotion? Send a message with lifetime or forword times.

When we check our timeline, posts are just like sands on a beach. 
What if we want to link the dot? Append a node after the post chain.

We can discuss under a post by sending comments. It makes a post as long as possible.
We also want to record our footprints of doing something, especially in a study process.

Much more functions can be added into a post.
Initiate a change of domain.
Start a vote on how we meet each other.
Make a punch card, so that we could find ourself motivated by others.


## User

Users own posts in timeline, and posts are organized in chains.
Users upvote, comment and collect posts, watch or block domains, follow or block users, get the authentication of a domain, initiate changes of a domain.

### Identity

Switch from study, gossip or something else.




