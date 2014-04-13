# ExtendData

`Object::EXTEND_DATA` is an alternative for `Object::DATA`.
It's a Hash-like accessor for multiple data sections of the executed file.

To create multiple data sections use `__${SECTION_NAME}__` below `__END__`, then you can access via `EXTEND_DATA["SECTION_NAME"]`.

## Usage
After `require 'extend_data'`, you can use `Object::EXTEND_DATA` constant.

	require 'extend_data'
	puts EXTEND_DATA["SECTION1"], EXTEND_DATA["SECTION2"], EXTEND_DATA["SECTION3"]
	#=> "data1"
	    "data2"
	    "data3"

	__END__
	data0
	__SECTION1__
	data1
	__SECTION2__
	data2
	__SECTION3__
	data3

## Installation

Add this line to your application's Gemfile:

    gem 'extend_data'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install extend_data

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
