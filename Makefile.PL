use 5.006000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Acme::Nest',
    VERSION_FROM      => 'lib/Acme/Nest.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ABSTRACT_FROM     => 'lib/Acme/Nest.pm', # retrieve abstract from module
    AUTHOR            => 'Luke Ross <lr@lukeross.name>'
);
