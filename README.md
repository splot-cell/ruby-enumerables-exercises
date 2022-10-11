# Custom Enumerable Project

My fork of the repository complementing the [Custom Enumerables Project](https://www.theodinproject.com/lessons/ruby-custom-enumerables) in the Ruby Course for The Odin Project.

## Desciption

Reimplementation of common methods found in the enumerable modules.

## Learning objectives

- Familiarize with blocks and procs
- Gain greater understanding of Enum module methods
- Practice TDD
- Upon completion of additional tasks shown in *Shortcomings* below, to gain a greater understanding of writing flexible methods for library use in Ruby

## Shortcomings

I wrote my implementation of these methods so they would do the minimum required to pass the provided test suites. However, while doing so, I noticed a number of areas where the tests are not comprehensive:

- All tests tests are run with Arrays. There are no tests using Hashes.
- Tests (almost) always pass a block. There is only one test (for my_count) checking behaviour if a block is ommitted.
- Tests do not check functionality if the function is passed an argument that is not a block. The exception is for my_inject, where tests always pass an arguement, and instead do not test the opposite, i.e. behaviour when no "init_value" is passed.

My intention is to write additional tests to cover these behaviours, and then update the code to pass these tests too. Progress will be recorded here.

### Methods

The following table has the methods implemented.

| Method                          | Spec File                       | Notes                                                                 |
| ------------------------------- | ------------------------------- | --------------------------------------------------------------------- |
| `Array#my_each`                 | spec/my_each_spec.rb            | You will define my_each on the Array class in `lib/my_enumerables.rb` |
| `Enumerable#my_each_with_index` | spec/my_each_with_index_spec.rb |                                                                       |
| `Enumerable#my_select`          | spec/my_select_spec.rb          |                                                                       |
| `Enumerable#my_all?`            | spec/my_all_spec.rb             |                                                                       |
| `Enumerable#my_any?`            | spec/my_any_spec.rb             |                                                                       |
| `Enumerable#my_none?`           | spec/my_none_spec.rb            |                                                                       |
| `Enumerable#my_count`           | spec/my_count_spec.rb           |                                                                       |
| `Enumerable#my_map`             | spec/my_map_spec.rb             |                                                                       |
| `Enumerable#my_inject`          | spec/my_inject_spec.rb              
