# Context: a blog post from Phil Windley

I follow [Phil Windley's Technometria](https://www.windley.com/), meaning that I arrange to be notified (using [RSS](https://aboutfeeds.com/)) when he publishes a new post, and 
when that happens, I eagerly read and attempt to understand it.

## Phil's blog post: [Identity for the Pico Engine](https://www.windley.com/archives/2026/07/identity_for_the_pico_engine.shtml)

Soon after this was posted, Phil invited me to a conference call during which he showed me how all of this works.

## My reply: an open letter

Dear Phil,

Thank you so much for treating me to a personal presentation on Tuesday of the ideas you present in your latest blog post.

I have spent decades "looking for something less of a platform and more personal." It began in the 1970's when I first gained access to a mainframe computer, and then a minicomputer, and desperately wanted my own computer, a personal computer. It wasn't until the 1980's that I was able to afford my first (and last) personal computer, an Apple ][, for which I had the hardware schematic, and the full text of the built-in firmware code.

You may have noticed the parenthetical "(and last)" because, alas, the next computers that I was able to purchase weren't really mine—they were more a platform than personal—because they really belonged to IBM, Dell, or Apple, especially more recently when on-line updates make it really clear that while I may own the physical device, the computer really still belongs to the manufacturer. I get to use it, but have to follow the rules, and certainly am far from able to understand either the hardware or the operating system code.

Then, you gave me picos in the 2010's! At last, something I could understand and appreciate as a virtual machine: "hardware" and software alike. And everything that I wanted to build, I could (on top of the platform of whatever PC or EC2 was hosting the pico engine). I have now enjoyed a full decade of owning a personal computer in the form of a pico (mostly, just one, adding rulesets left and right, although I have the freedom to make as many more as I would want, and occasionally do).

In 1995, I published a dissertation (TL;DR here), that argued for end-user programming. So, I really resonate with you, "spending a long time arguing that people should have ... personal ... software." What I have learned, "by sad experience," is that most people simply don't want to program. They don't want their own domain name. They don't want their own server. I polled one of my 400 level classes, one with over a hundred students, and only three had their own domain name, and only one had a web server there. And this is a computer science class! Thanks to domain of one's own, I was able to convince a few people to get a domain name, but only one (my sister (the Music and Dance department chair in the HBLL)) actually used it for anything (and that only with frequent one-on-one help from me (after the defunding of domains, I helped her move to GitHub)).

Being neither a psychologist nor a sociologist, I am at a total loss to understand why most people are perfectly happy with "a rented seat on someone else's platform" and don't seem to care that they neither own nor control it. For example, they use WordPress (or even Blogger) vs doing their own blog from scratch as you and I do. We use someone else's server; they use someone else's platform on top of someone else's server. "Too often, the user's need to program -- to customize, extend, make minor adjustments, or automate simple tasks -- is completely ignored. When a solution is offered, it is usually an arcane macro language -- a condescension -- incomplete, weak, and yet still requiring enormous skill" (quoting from my thesis). It must be that taking control at the level you and I do is too complex (or otherwise off-putting), so that people would rather learn how to use the platform instead.

Moving on to [PLAN](https://plan.picolabs.io/), which is my experiment to provide a pico to all comers, without requiring them to use the pico engine developer tools. The idea is that they obtain "apps" (each a single ruleset) from someone they trusted and install them in their pico (called an "agent") to get some desired functionality. It includes an in-built ruleset editor (seeded by boilerplate) if they want to add an app of their own.

It is "open to all comers" but no one comes! Quite a few people signed up—after some arm twisting—but the only person to use it at any length was Will Abramson, and he really should have been using the developer UI on his own personal pico engine, but I couldn't talk him into doing that. His application needed child picos, and PLAN doesn't (yet) provide a UI for that.

PLAN and io.picolabs.pds: PLAN uses a very simple version of that RID ([here](https://github.com/Picolab/PLAN/blob/main/krl/io.picolabs.pds.krl)) and also has a ruleset named io.picolabs.plan.profile ([here](https://github.com/Picolab/PLAN/blob/main/krl/io.picolabs.plan.profile.krl)). Together, these intersect with the v1.5 io.picolabs.pds ([here](https://github.com/Picolab/pico-engine/blob/master/packages/pico-engine/krl/io.picolabs.pds.krl)) and are mostly compatible. PLAN's profile includes a webpage for entering/editing profile information (because it is a PLAN "app" (and that's what apps do: conflate storage and UI for some topic (that is the [PicoStack](https://picostack.org/) way))).

The future of PLAN: first of all, let me thank you for funding this experiment! So long as you are willing, and I am living, it would mean a lot to me if we could continue the experiment. I use it daily, for "my" temperature sensors (thank you also for these!), as archived in sheets like this one for [MarchTemps](https://bruceatbyu.com/s/MarchTemps). Oh, and the sensors have (as an experiment within the experiment ([Building a web application](https://picostack.blogspot.com/2024/01/building-web-application.html))) a public-facing [page](https://plan.picolabs.io/c/clqvdoh470z5ivvpr3n0udhvt/query/com.vcpnews.w/now.html) (all of the other sensor pages are private (shared secret ECI)).

Identity in PLAN: this is a sort of midway point between passcodes and username/password. PLAN uses an email address as an identifier. In other words, it conflates `acct:emailaddress` and `mailto:emailaddress` (in the same way that Slack does (and about which I bitterly complained(!))). A would-be PLAN participant has only to supply their email address, verifying it by receiving a message with a personal link (including the ECI as a shared secret) to their pico aka agent. Clicking on that link sets up a cookie that must match in every interaction that follows (enforced by JS code in every page).

Do I plan to update PLAN to v1.5? Yes, as time permits. This would have actually solved the problem that Will had. I don't know if I'll be able to attract him back, by inviting him to create a passcode for PLAN and granting him his own root pico, but I'll try. The "N" is for "Network" and that will be a little harder to manage, given the separation of pico meshes, but I'll try, which will provide experience with DIDComm. Speaking of which, peer DIDs are built-in to the pico engine, but they have been overtaken by events, and need to be updated to whatever version the community is currently at (sadly, I've lost touch with said community).

Thanks for reading this, Phil, and thanks again for the personal preview!

Best wishes,
Bruce
