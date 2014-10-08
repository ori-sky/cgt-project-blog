Date: October 7, 2014
Title: Initial Concept

In this post, I will outline my initial game concept and cover in detail things like gameplay mechanics. As this is just an initial concept and not a game design document, there are a lot of details still to be worked out and anything seen here may change drastically. The prototype name I'm going with is Sub-Terra.

#### Overview

Sub-Terra is a game focused on exploration and player immersion, accomplishing this through three core mechanics:

* mining
* exploration
* monsters

The game, as the name suggests, takes place underground. Although it might sound similar to Minecraft, it's a very different game.

#### Mining

At the start of the game, the player finds a pickaxe which is used to mine away chunks of rock from the game world. A pickaxe takes half a second to swing before it hits and mines away rock, and takes another half second to swing back to its normal position. The initial pickaxe mines away a small area of rock, whereas pickaxes found later in the game mine away progressively larger areas of rock.

Crystals can be found around the game world. These crystals have been imbued with magic, allowing each kind of crystal to clear away large areas of rock in specific shapes; for example, long corridors and large  spherical rooms. These crystals are rare and can only be used once before losing their imbued potential.

#### Exploration

As players mine through the game world, they will come across many things such as precious resources (gold, gemstones, diamond, etc), natural cave formations, and man-made structures. At world generation time, nodes will be generated rather than these occurrences themselves. The occurrences will be generated dynamically during gameplay, based on what the player finds, the frequency at which they find things, and other factors.

A high number of nodes will be generated but not all of them will be used. The nodes that become active will depend on how many nearby nodes are also active. For example, if more than one or two nodes in the large nearby area are active, the node will never become active. If the requirements are met, a node can become active in two circumstances.

1. The player is very close to the node.
2. The potential exists for the node to be visible to the player in the next few frames.

Once a node becomes active, it is permanently active. Nearby nodes are checked to see if they could potentially become active at some point. If they cannot, they are marked as permanently inactive.

#### Monsters

The game has a monster system similar in nature to the exploration system in that monsters will be encountered randomly based on criteria like what the player has recently gone through. Monster encounters will also be taken into account in the exploration system. Encounters will provide a healthy break from the immersion of mining and exploring, yet without breaking the player's overall immersion in the game.

The exploration and monster systems are tightly coupled in terms of how they decide what will happen to the player next and will be tailored to keep the player interested at all times in what's happening in the game world.

---

I intended to go into more detail about things like natural resources and monsters but this post has turned into a bit of a novel. While I won't cover these today, I do intend to make a post about them very soon.
