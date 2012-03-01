# Overview

[Dist::Zilla][0] configuration and profiles to mint new distributions.

# Configuration

This is done in `config.ini`, and it merely lists the copyright owner and license to use.

# Profiles

Templates and files to use for each type of distribution you which to create (e.g., webapp, application, library, etc).

I currently have 3 profiles, one for non-Moose distributions (which will typically be applications), another for libraries
using Moose, and a third one for Dancer web apps.

# Plugins

I currently use the following plugins:

* The [Basic][1] bundle, but I remove ExtUtils::MakeMaker and use Module::Install.

* META.json

* Auto pre-requisites: explicitly declare the modules version you want to use in your `use` clauses (if any) and Dist::Zilla does
  the rest.

* POD Weaver to add bits of boilerplate, like version numbers, etc.

* PkgVersion, to add the `our $VERSION` statement and version POD fragment.

* NextRelease, to automagically add to the `Changes` file, with a modified [CLDR format][2].

* Extra author tests.

* The [Git][3] bundle.

[0]: https://metacpan.org/module/Dist::Zilla "Dist::Zilla on MetaCPAN"
[1]: https://metacpan.org/module/Dist::Zilla::PluginBundle::Basic "Basic bundle details"
[2]: https://metacpan.org/module/DateTime#CLDR-Patterns "DateTime CLDR patterns"
[3]: https://metacpan.org/module/Dist::Zilla::PluginBundle::Git "Dist::Zilla Git plugin bundle on MetaCPAN"
