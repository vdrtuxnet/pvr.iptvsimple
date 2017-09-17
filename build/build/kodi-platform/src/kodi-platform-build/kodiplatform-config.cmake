# - kodiplatform config mode
#
# Defines the following variables:
#  kodiplatform_FOUND        - true
#  kodiplatform_VERSION      - version of the kodiplatform library found, e.g. 0.2
#  kodiplatform_INCLUDE_DIRS - header directories with which to compile
#  kodiplatform_LINKER_FLAGS - flags that must be passed to the linker
#  kodiplatform_LIBRARIES    - names of the libraries with which to link
#  kodiplatform_LIBRARY_DIRS - directories in which the libraries are situated
#
# propagate these properties from one build system to the other
set (kodiplatform_VERSION "17.5")
set (kodiplatform_INCLUDE_DIRS /src/kodi/pvr.iptvsimple.multi/build/build/depends/include;/src/kodi/pvr.iptvsimple.multi/build/build/depends/include/kodi /src/kodi/pvr.iptvsimple.multi/build/build/depends/include)
set (kodiplatform_LIBRARY_DIRS "")
set (kodiplatform_LINKER_FLAGS "")
set (kodiplatform_CONFIG_VARS "")

# libraries come from the build tree where this file was generated
if(WIN32)
  set (kodiplatform_LIBRARY "/src/kodi/pvr.iptvsimple.multi/build/build/depends/lib/kodiplatform.lib")
else(WIN32)
  set (kodiplatform_LIBRARY "-L/src/kodi/pvr.iptvsimple.multi/build/build/depends/lib -lkodiplatform")
endif(WIN32)
set (kodiplatform_LIBRARIES ${kodiplatform_LIBRARY} "-lpthread;/src/kodi/pvr.iptvsimple.multi/build/build/depends/lib/libtinyxml.a")
mark_as_advanced (kodiplatform_LIBRARY)

# add the library as a target, so that other things in the project including
# this file may depend on it and get rebuild if this library changes.
add_library (kodiplatform UNKNOWN IMPORTED)
set_property (TARGET kodiplatform PROPERTY IMPORTED_LOCATION "${kodiplatform_LIBRARY}")
