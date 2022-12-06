# NAME

Locale::Country::Extra - Standard and IDD codes for Country identification, with Multilingual support

# VERSION

Version 1.0.0

# SYNOPSIS

    use Locale::Country::Extra;

    my $countries = Locale::Country::Extra->new();

    my $c = $countries->country_from_code('au'); # returns 'Australia'
    my $code = $countries->code_from_country('Indonesia'); # returns 'id'
    my $idd = $countries->idd_from_code('in'); # returns 91
    my $code = $countries->code_from_phone('+44 8882220202'); # returns 'gb'

# SUBROUTINES

## new

## all\_country\_codes

    USAGE
    my @codes = $c->all_country_codes()

    RETURNS
    A list of all country codes

## all\_country\_names

    USAGE
    my @names = $c->all_country_names()

    RETURNS
    A list of all country names

## code\_from\_country

    USAGE
    my $code = $c->code_from_country($country_name)

    PARAMS
    $country_name => Country Name

    RETURNS
    Country code

    EXTRA
    Extra aliases for country name are supported as below
    %COUNTRY_MAP = (
        "brunei darussalam"                 => "bn",
        "cocos islands"                     => "cc",
        "congo"                             => "cg",
        "heard island and mcdonald islands" => "hm",
        "hong kong s.a.r."                  => "hk",
        "korea"                             => "kr",
        "macao s.a.r."                      => "mo",
        "myanmar"                           => "mm",
        "islamic republic of pakistan"      => "pk",
        "palestinian authority"             => "ps",
        "pitcairn"                          => "pn",
        "réunion"                           => "re",
        "saint vincent and the grenadines"  => "vc",
        "south georgia"                     => "gs",
        "south georgia & south sandwich"    => "gs",
        "syrian arab republic"              => "sy",
        "u.a.e."                            => "ae",
        "vatican city state"                => "va",
        "virgin islands"                    => "vg"
    );

## get\_valid\_phone

    USAGE
    my $phone = $c->get_valid_phone($phone_number)

    PARAMS
    $phone_number   => Phone Number

    RETURNS
    A empty string for invalid and the formated phone number for valid numbers

## code\_from\_phone

    USAGE
    my $code = $c->code_from_phone($phone_number)

    PARAMS
    $phone_number   => Phone Number

    RETURNS
    The first country code ocurrency

## codes\_from\_phone

    USAGE
    my @codes = $c->codes_from_phone($phone_number)

    PARAMS
    $phone_number   => Phone Number

    RETURNS
    All the country codes matching the phone prefix

## country\_from\_code

    USAGE
    my $country_name = $c->country_from_code($country_code)

    PARAMS
    $country_code   => Country code

    RETURNS
    Country name

## idd\_from\_code

    USAGE
    my $idd = $c->idd_from_code($country_code)

    PARAMS
    $country_code   => Country code

    RETURNS
    IDD code of country

## localized\_code2country

    USAGE
    my $country_name = $c->localized_code2country($country_code, $lang)

    PARAMS
    $country_code   => Country code
    $lang => Language code

    RETURNS
    Localized Country name

# DEPENDENCIES

- [Locale::Country](https://metacpan.org/pod/Locale%3A%3ACountry)
- [Locale::Country::Multilingual](https://metacpan.org/pod/Locale%3A%3ACountry%3A%3AMultilingual)

# SOURCE CODE

[GitHub](https://github.com/binary-com/perl-Locale-Country-Extra)

# AUTHOR

binary.com, `<perl at binary.com>`

# BUGS

Please report any bugs or feature requests to
`bug-locale-country-extra at rt.cpan.org`, or through the web
interface at
[http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Locale-Country-Extra](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Locale-Country-Extra).
We will be notified, and then you'll automatically be notified of progress on
your bug as we make changes.

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Locale::Country::Extra

You can also look for information at:

- RT: CPAN's request tracker (report bugs here)

    [http://rt.cpan.org/NoAuth/Bugs.html?Dist=Locale-Country-Extra](http://rt.cpan.org/NoAuth/Bugs.html?Dist=Locale-Country-Extra)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/Locale-Country-Extra](http://annocpan.org/dist/Locale-Country-Extra)

- CPAN Ratings

    [http://cpanratings.perl.org/d/Locale-Country-Extra](http://cpanratings.perl.org/d/Locale-Country-Extra)

- Search CPAN

    [http://search.cpan.org/dist/Locale-Country-Extra/](http://search.cpan.org/dist/Locale-Country-Extra/)

# LICENSE AND COPYRIGHT

Copyright 2014 binary.com.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

[http://www.perlfoundation.org/artistic\_license\_2\_0](http://www.perlfoundation.org/artistic_license_2_0)

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
