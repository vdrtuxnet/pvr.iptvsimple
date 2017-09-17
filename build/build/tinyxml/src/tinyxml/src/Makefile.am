INCLUDES = -I$(top_srcdir)/include

lib_LTLIBRARIES = libtinyxml.la

library_includedir=$(includedir)
library_include_HEADERS = $(top_srcdir)/include/*.h

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = tinyxml.pc

libtinyxml_la_SOURCES = tinystr.cpp \
			tinyxml.cpp \
			tinyxmlerror.cpp \
			tinyxmlparser.cpp
