#!/usr/bin/env bash

# fields
# a   Access (or export) of class members
# f   File-restricted scoping [enabled]
# i   Inheritance information
# k   Kind of tag as a single letter [enabled]
# K   Kind of tag as full name
# l   Language of source file containing tag (required for autocomplete)
# m   Implementation information
# n   Line number of tag definition
# s   Scope of tag definition [enabled]
# S   Signature of routine (e.g. prototype or parameter list)
# z   Include the "kind:" key in kind field
# t   Type and name of a variable or typedef as "typeref:" field [enabled]

# extra
# f   Include an entry for the base file name of every source file
# q   Include an extra class-qualified tag entry for each tag which is a member of a class

# c++-kinds
# c  classes
# d  macro definitions
# e  enumerators (values inside an enumeration)
# f  function definitions
# g  enumeration names
# l  local variables [off]
# m  class, struct, and union members
# n  namespaces
# p  function prototypes [off]
# s  structure names
# t  typedefs
# u  union names
# v  variable definitions
# x  external and forward variable declarations [off]

ctags -R --c++-kinds=+p --fields=+iaSl --extra=+q "$@"
