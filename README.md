# rafiq_utils
Collection of tools

## mover.bat

How to use `mover` batch script

1. Move `mover.bat` to the directory of files you wish to move.
2. Open command prompt in current directory.
3. Type in the command as follow.

```bat
.\mover <start> <end> <step>
```

Example

```bat
.\mover 1 1000 10
```

will move *1.txt* until *1000.txt* into folders separated by 10 steps (1-10, 11-20, etc).

***NOTE: Make sure the naming of the files are correct. The script make no effort to validate file names.***

If step isn't specified, the default **10** will be used.

## txt_gen.bat

**(OPTIONAL)**

Use `txt_gen` batch script to generate empty text files incrementally. Useful for testing `mover.bat` to ensure it's working correctly.

Usage:

```bat
.\txt_gen <amount>
```

Example:

```bat
.\txt_gen 1000
```

will generate *1.txt* until *1000.txt* into the current directory.
