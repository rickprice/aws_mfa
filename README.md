# aws_mfa

Utility functions to setup your AWS mfa when using fish shell.
You will only need to run `aws_mfa` and type your token when it expires.

## Installation

### Using [fundle](https://github.com/danhper/fundle)

Add

```
fundle plugin 'rickprice/aws_mfa'
```

to your `config.fish`, reload your shell and run `fundle install`.

### Using [Fisher](https://github.com/jorgebucaran/fisher)

```
fisher install rickprice/aws_mfa
```

### Manually

Copy `functions` and `conf.d` to your `$__fish_config_dir` directory. That's all.
