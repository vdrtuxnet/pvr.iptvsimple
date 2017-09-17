#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ(2.61)
AC_INIT(libtinyxml, 2.6.2)
AC_CONFIG_SRCDIR([test/xmltest.cpp])
AC_CONFIG_HEADER([config.h])

AM_INIT_AUTOMAKE(AC_PACKAGE_NAME, AC_PACKAGE_VERSION)

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_RANLIB
AC_PROG_LIBTOOL

# Checks for libraries.

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([stddef.h stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_C_CONST
AC_C_INLINE
AC_TYPE_SIZE_T
AC_CHECK_TYPES([ptrdiff_t])

# Checks for library functions.
AC_CHECK_FUNCS([memmove strchr])

CXXFLAGS="-DTIXML_USE_STL $CXXFLAGS"

AC_SUBST(REQUIRES)
AC_CONFIG_FILES([src/tinyxml.pc])
AC_OUTPUT(Makefile src/Makefile test/Makefile)
