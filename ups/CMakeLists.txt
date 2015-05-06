if (ALT_CMAKE) 
include(altCMakeLists.cmake)
else()
# ======================================================================
#
# generate/install ups boilerplate
#
# ======================================================================


process_ups_files()

cet_cmake_config()
endif()
