# Rspec::Big::Split

Split one big RSpec test file into many smaller ones for parallel execution.

## Installation

Execute this command to add gem to your application's Gemfile:

```ruby
bundle add rspec-big-split
```

## Usage

1. Add `ci_split_example_groups: true` as metadata to your example groups (only for big files).
2. Generate tests map with: `bundle exec rspec --dry-run --format Rspec::Big::Split::Formatter --out tmp/rspec_splitter.json`
3. Define variables like `TEST_NODE_TOTAL=20` and `TEST_NODE_INDEX=1` in your CI/CD configuration.
   * Make sure that your indexing starts with `1` and ends equal to `TEST_NODE_TOTAL`.
4. (optional) Printout tests that will be run in current node: `bundle exec rspec-big-split tmp/rspec_splitter.json`
5. Run tests with `bundle exec rspec $(bundle exec rspec-big-split tmp/rspec_splitter.json)` to run tests on each node.

### Options

 * By default, this script splits tests by files into workers. If you want to split by examples, pass `--split-by-example`
 * You can use `--add-one-on-test-node-index` to modify the index of the test node. This is useful when your CI starts indexing from `0` and you want to start from `1`.


