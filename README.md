# Mobile App Tools

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'app-tools'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install app-tools

## The Tools

### xcarchive2ipa

This tool creates IPA files that are valid for uploading to iTunesConnect.  The `xcodebuild` tools is supposed to this functionality but currently the IPA files that it generates have no `SwiftSupport` directory and the symbols are not in the correct `.symbols` format that iTunesConnect requires.

This tool is a Ruby implementation of the relevant section of the [CaveJohnson xcodeGUITricks command](https://github.com/drewcrawford/CaveJohnson/blob/master/cavejohnson/__init__.py#L84).

Just pass the tool the name of the `.xcarchive` file and it will generate a `.ipa` file next to it.  It returns the full name of the output file so you easily can pass that to the next step in your build script.

```bash
> xcarchive2ipa MyApp.xcarchive
MyApp.ipa
```

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rake` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jlyonsmith/xcarchive2ipa.
