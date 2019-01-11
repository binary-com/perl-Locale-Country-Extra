requires 'Locale::Country::Multilingual';

on configure => sub {
    requires 'Locale::Country', '3.42';
    requires 'Locale::Codes';
};

on test => sub {
    requires 'Test::Exception';
    requires 'Test::More';
    requires 'Test::NoWarnings';
};
