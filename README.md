# RFC Template

RFCs are a process of documenting proposal for technical change.
It help to structure project architecture around collective discussions with your community.

This repository is a github template that will help you easily bootstrap your RFC book.
You can view the demo at [https://plab-io.github.io/project-rfcs-template/](https://plab-io.github.io/project-rfcs-template/]).

## What's included

1. RFCs book setup using mdbook
2. RFC template at `src/0000-rfc-template.md` with example at `src/rfcs/0000-awesome-rfc-template.md`
3. RFC guide at `src/rfcs/rfcs.md`
4. Code Of Conduct form https://opensource.guide/code-of-conduct/
5. Contributor page
6. Github workflow to publish mdBook on github-pages

## How to Use It

1. Use this repo as a template
2. Use bootstrap script replace the template variables
```bash
❯ ./bin/bootstrap.sh
Github Organization Name:
PLAB-IO

Repository Name:
project-rfcs-template

Contact in case of abuse report:
abuse@plab.io

Did you want remove rfc example?: [yes/no]
yes

rm 'src/rfcs/0000-awesome-rfc-template.md'
```

3. Following the guide instruction of section `How to propose a new RFC`

## Contribution

If you have any question, recommendation, or improvement.
Or even if you use this class and it's useful for you,
thanks for taking a few minutes to open an issue and share your experience.

- Fork :book:
- Push :runner:
- PR :clap:
