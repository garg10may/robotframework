Quite bad, keyword driven approach is archaic and no more recommended. It's limited and increases the problem it's trying to solve. Robotframework has it's own DSL i.e. its own language which is IMHO more difficult than python. The syntax is verbose and prone to error. The passing of variables, state, looping is so difficult.

Biggest challenge is that error messages are very poor. Like for some keywords if would say not able to access, even if there is typo, missing space, space instead of tab, currently I am also not able to figure out reason for below error since it's clearly in front of me.

No keyword with name 'Wait until the logout button is visible' found.

And as and when the test suite grows if will become more difficult to handle, would be more difficult to handle complex scenarios. Pytest is doing all that and more, quite flexible, runs in parallel, can be integerated in CI/CD.
