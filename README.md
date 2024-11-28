# Rspec::Big::Split

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/rspec/big/split`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Execute this command to add gem to your application's Gemfile:

```ruby
bundle add rspec-big-split
```

## Usage

1. Add `ci_split_example_groups: true` as metadata to your example groups (only for big files).
2. Generate tests map with: `bundle exec rspec --dry-run --format Rspec::Big::Split::Formatter --out tmp/rspec_splitter.json`
3. Define variables like `TEST_NODE_TOTAL=20` and `TEST_NODE_INDEX=0` in your CI/CD configuration.
   * Make sure that your indexing starts with `1` and ends equal to `TEST_NODE_TOTAL`.
4. (optional) Printout tests that will be run in current node: `bundle exec rspec-big-split tmp/rspec_splitter.json`
5. Run tests with `bundle exec rspec $(bundle exec rspec-big-split tmp/rspec_splitter.json)` to run tests on each node.

### Options

By default, this script splits tests by files into workers. If you want to split by examples, pass `--split-by-example` 
