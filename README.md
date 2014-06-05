# Iso::IbanValidation

This gem adds a validator to active_record obejcts for IBAN.
It works on top of the gem 'iso-iban'.

## Installation

Add this line to your application's Gemfile:

    gem 'iso-iban_validation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iso-iban_validation

## Usage

Just insert into your model one of the following variants of the validation:

    validates_iban_format_of :iban_field

or

    validates_iban_of :iban_field

or

    validates :iban_field, iban: true

## Dependency

* [iso-iban](https://github.com/apeiros/iso-iban)

## Contributing

1. Fork it ( https://github.com/raskhadafi/iso-iban_validation/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
