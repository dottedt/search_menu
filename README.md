# SearchMenu

Searches a menu and finds any items that will add up to a specific price.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'search_menu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install search_menu

## Usage

There are several ways of using SearchMenu.  The first way is to go through 
the `SearchMenu` class itself.
    
    require 'SearchMenu'
    
    search = SearchMenu.new
    search.get_file_or_data(file_name)

The second way is to modify the String or Array classes by including either
core extension.

    require 'search_menu/core_ext/array'   # extends only Array
    require 'search_menu/core_ext/hash'  # extends only Hash
    require 'search_menu/core_ext'         # extends both Array/Hash
    
    [["$10.00"], ["mixed fruit", "$2.15"], ["french fries", "$2.75"], ["side salad", "$3.35"], ["hot wings",
    "$3.55"], ["mozzarella sticks", "$4.20"], ["sampler plate", "$5.80"]].search_menu
    
    {"$10.00"=>nil, "mixed fruit"=>"$2.15", "french fries"=>"$2.75", "side salad"=>"$3.35", "hot wings"=>"$3.55",
    "mozzarella sticks"=>"$4.20", "sampler plate"=>"$5.80"}.search_menu
    
Lastly, the `SearchMenu` class along with all core extensions can be loaded via
a single require.

     require 'search_menu/all'

## Please Note

SearchMenu expects the first value to be the price. Please see the examples below.

For text files:

$10.00
mixed fruit,$2.15
french fries,$2.75
side salad,$3.35
hot wings,$3.55
mozzarella sticks,$4.20
sampler plate,$5.80
pine cones,$4.20
cat food,$5.80

For an Array:

[["$10.00"], ["mixed fruit", "$2.15"], ["french fries", "$2.75"], ["side salad", "$3.35"], ["hot wings",
    "$3.55"], ["mozzarella sticks", "$4.20"], ["sampler plate", "$5.80"]]
    
For a Hash:

{"$10.00"=>nil, "mixed fruit"=>"$2.15", "french fries"=>"$2.75", "side salad"=>"$3.35", "hot wings"=>"$3.55",
    "mozzarella sticks"=>"$4.20", "sampler plate"=>"$5.80"}

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/search_menu/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
