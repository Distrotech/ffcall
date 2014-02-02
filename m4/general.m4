dnl -*- Autoconf -*-
dnl Copyright (C) 1993-2009 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible, Marcus Daniels, Sam Steingold.

AC_PREREQ(2.61)

AC_DEFUN([FFCALL_COMMON_LIBTOOL],
[AC_REQUIRE([AM_DISABLE_SHARED])dnl
AC_REQUIRE([AM_PROG_LIBTOOL])dnl
])

AC_DEFUN([FFCALL_COMMON_TRAMPOLINE],
[AC_REQUIRE([AC_HEADER_STDC])dnl
AC_REQUIRE([CL_GETPAGESIZE])dnl
AC_REQUIRE([CL_MACH_VM])dnl
AC_REQUIRE([CL_MMAP])dnl
AC_REQUIRE([CL_MPROTECT])dnl
AC_REQUIRE([CL_SHM_H])dnl
AC_REQUIRE([CL_SHM])dnl
AC_REQUIRE([FFCALL_CODEEXEC])dnl
])

AC_DEFUN([CL_CHECK],[dnl
  AC_CACHE_CHECK([for $2],[$3],
    [$1([AC_LANG_PROGRAM([$4],[$5])],[$3=yes],[$3=no])])
  AS_IF([test $$3 = yes], [$6], [$7])
])

AC_DEFUN([CL_LINK_CHECK], [CL_CHECK([AC_LINK_IFELSE],$@)])

dnl Expands to the "extern ..." prefix used for system declarations.
dnl AC_LANG_EXTERN()
AC_DEFUN([AC_LANG_EXTERN],
[extern
#ifdef __cplusplus
"C"
#endif
])

AC_DEFUN([CL_CONFIG_SUBDIRS],
[dnl No AC_CONFIG_AUX_DIR_DEFAULT, so we don't need install.sh.
AC_PROVIDE([AC_CONFIG_AUX_DIR_DEFAULT])
AC_CONFIG_SUBDIRS([$1])dnl
])
