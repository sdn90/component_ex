> WIP: Currently unstable and NOT following Semver. Use at your own risk.

# ComponentEx
A pattern for creating static UI components for Phoenix.

## Why Components?

**Reusability**  
By breaking down a UI into smaller generic components, you can drastically reduce 
the amount of markup you have to write without sacrificing flexbility.

**Easy to test**  
Since components are just functions that return HTML, you can easily test
them without the need to render entire pages. You can use a library such as
[Floki](https://github.com/philss/floki) to parse the HTML using CSS selectors.

## TODO
- [ ] Generators
- [ ] Inline style support?
- [ ] Testing utilities
- [ ] Document patterns (higher order components)
