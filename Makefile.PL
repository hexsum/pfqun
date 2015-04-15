use 5.008008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Webqq::Qun',
    VERSION_FROM      => 'lib/Webqq/Qun.pm', # finds $VERSION
    DISTNAME            => 'Webqq-Qun',
    LICENSE             => "perl",
    PREREQ_PM         => {
        "JE"                    => 0,
        "JSON"                  => 0,
        "MIME::Base64"          => 0,
        "Digest::MD5"           => 0,
        "LWP::UserAgent"        => 0,
        "LWP::Protocol::https"  => 0,
    }, # e.g., Module::Name => 1.1
    dist              => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Webqq-Qun-*' },
    META_MERGE => {
        resources => {     
            repository=>{
                type    => 'git',
                url     => 'git://github.com/sjdy521/Webqq-Qun.git',
                web     =>  'https://github.com/sjdy521/Webqq-Qun',
            },
        },
    },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (
       #ABSTRACT_FROM  => 'lib/Webqq/Client.pm', # retrieve abstract from module
       ABSTRACT       => 'Webqq::Qun - api for qq qun management,support add member,remove member,set administrator,etc',
       AUTHOR         => 'sjdy521 <sjdy521@163.com>') : ()),
);
