# OBDH_LABS
Source code for the MUSE/OBDH laboratories.

## Important notice

This repository uses submodules. To clone it, you must use the --recursive git option:

```bash
git clone --recursive https://github.com/STR-UPM/OBDH_LABS.git
```

## Environment

The laboratory software runs on an STM32F4-DISCO board. You will need a GNAT cross compiler for this board. Free compilers can be downloaded from the [AdaCore Community site](https://www.adacore.com/community).

The examples make use of the [Ada Drivers Library](https://github.com/AdaCore/Ada_Drivers_Library). This library is imported as a submodule of the repository.

## Documentation

See the `docs` folder for a laboratory manual and other documents. 
