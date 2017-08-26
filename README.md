# Projectgenerator Documentation

[![Build
Status](https://travis-ci.org/opengisch/projectgenerator-docs.svg)](https://travis-ci.org/opengisch/projectgenerator-docs)

## Resources

The final product can be found here:

 * [Castellano](https://opengisch.github.io/projectgenerator/docs/es)
 * [Deutsch](https://opengisch.github.io/projectgenerator/docs/de)
 * [English](https://opengisch.github.io/projectgenerator/docs/en)

## Process

The documentation is written in English and managed in this git repository.
The latest version of the documentation is automatically built (on [Travis
CI](https://travis-ci.org/opengisch/projectgenerator-docs)) and published on the links
above.

Translation is done via transifex. The latest translations are pulled and built
on a daily basis (using [travis-ci cron job
functionality](https://docs.travis-ci.com/user/cron-jobs/)).

## Contributing

Projectgenerator is a community driven open source project. As such we are very happy to
get your help and feedback.

Therefore we appreciate if you can help us by

 * Documenting features (in English)
 * Improving the documentation (in English)
 * Translate it to your language

### Documentation process

*Note: You will need a [github account](https://github.com/) for this.*

Navigate to https://github.com/opengisch/projectgenerator-docs/ and click the `Fork` link on the top
right. You now have your own copy of the documentation on which you can work
and cannot do any damage, feel free to experiment.
If you want more information about forking you can find it
[here](https://help.github.com/articles/fork-a-repo/).

You most likely want to make changes to the files in the folder `en`. That's
where all the real documentation text is located. The documentation is written
in reStructuredText, a simple syntax to structure the text. You can find
information about it in the [reStructuredText
Primer](http://sphinx-doc.org/rest.html) or by looking at what is already in
the documentation and make your changes according to it.

Once you have made changes which you would like to contribute back to the main
documentation, please make a [pull
request](https://help.github.com/articles/using-pull-requests/).

### Translation process

*Note: You will need to have a [transifex account](https://transifex.com/) for this.*

Navigate to our [transifex
project](https://www.transifex.com/organization/opengisch/dashboard/projectgenerator-documentation)
and click on the language you would like to translate. You will see a link
`Join Team`. Click it and wait for approval (you will receive an email).

Once you receive the email you can head back to the transifex project page,
click on your language again and then will have the possibility to choose a
documentation chapter to translate. There is a `Translate` button after
choosing a chapter.

If your language is not yet available, we will happily add it for you. Just
[open an issue](https://github.com/opengisch/projectgenerator-docs/g/issues/new) and tell us which
language you would like to translate it to.
