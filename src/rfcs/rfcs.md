# RFC / Request For Comments
[RFC / Request For Comments]: #rfc--request-for-comments

RFCs are a process of documenting proposal for technical change.
It help to structure project architecture around collective discussions seeking feedback from the community.
RFC are represented by the form of documents that try to be speculative and precise.

This template are heavily based on the famous [Rust RFC Book](https://rust-lang.github.io/rfcs/)

## Table of Contents
[Table of Contents]: #table-of-contents

  - [Opening](#rfc--request-for-comments)
  - [Table of Contents]
  - [When you must NOT follow this process]
  - [When you must follow this process]
  - [Before creating an RFC]
  - [How to propose a new RFC]
  - [The RFC life-cycle]

## When you must NOT follow this process
[When you must NOT follow this process]: #when-you-must-not-follow-this-process

  - Rephrasing, reorganizing, refactoring, or otherwise "changing shape does
    not change meaning".
  - Additions that strictly improve objective, numerical quality criteria
    (warning removal, speedup, better platform coverage, more parallelism, trap
    more errors, etc.)
  - Enhancement of a feature that does not change the behavior or introduce BC break. 

_If you submit a pull request to implement a new feature without going through
the RFC process, it may be closed with a polite request to submit an RFC first._

## When you must follow this process
[When you must follow this process]: #when-you-must-follow-this-process

You need to follow this process if you intend to make **substantial** changes such as:
- API change that will break backward compatibility that is not a bugfix.
- New features (not enhancement)
- Removing features ( re-designed )
- Change of dependencies that impact API ( critical system library )
- Change of Standardization or Protocol (tcp to websocket, quic, cryptographic curve, hashing method...)

## Before creating an RFC
[Before creating an RFC]: #before-creating-an-rfc

An RFC process front-loads the collaborative work of major changes or additions to an open-source project. 
That is, instead of waiting until a pull request arrives with lines of code changes, discussion begins early. 
Contributors are required to put in effort up-front to help others in the project community understand their proposed changes. 
The project's TSC and its extended developer community are invited to provide input within the structure of the RFC.

Although there is no single way to prepare for submitting an RFC, it is generally a good idea to pursue feedback from 
other project developers beforehand, to ascertain that the RFC may be desirable; having a consistent impact 
on the project requires concerted effort toward consensus-building.

## How to propose a new RFC
[How to propose a new RFC]: #how-to-propose-a-new-rfc

In order to ease the process, we have prepare a template that you can use to fill a proposal. 

1. Copy the file `0000-rfc-template.md` to `rfcs/0000-my-feature.md` 
(where "my-feature" is descriptive. don't assign an RFC number yet).
2. Fill in the RFC. Put care into the details: RFCs that do not present convincing motivation, demonstrate lack of understanding of the design's impact, or are disingenuous about the drawbacks or alternatives tend to be poorly-received.
3. Submit a pull request. As a pull request the RFC will receive design feedback from the larger community, and the author should be prepared to revise it in response.
4. At some point, a member of TSC (or other form of approval in this particular project) will approve or reject 
the proposal. It can also have a period for `final comment` (FCP) to notify that the process will end shortly.
FCP period is quiet, and the RFC is either merged or closed. However, sometimes substantial new arguments or ideas are raised, the FCP is canceled, and the RFC goes back into development mode.

## The RFC life-cycle
[The RFC life-cycle]: #the-rfc-life-cycle

Once an RFC has been approved, it will be merged and automatically published on the website.
Now that the RFC are active, it must be taken in the roadmap of the SDLC. In most of the case it will be implemented by the author of the RFC or any persons that seek interest to expedite the development of that RFC.
