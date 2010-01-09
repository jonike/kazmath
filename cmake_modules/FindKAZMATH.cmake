FIND_PATH( KAZMATH_INCLUDE_DIRS kazmath/vec3.h /usr/include /usr/local/include $ENV{INCLUDE} )
FIND_LIBRARY( KAZMATH_LIBRARIES NAMES Kazmath PATHS /usr/lib /usr/local/lib )

IF(KAZMATH_INCLUDE_DIRS)
	MESSAGE(STATUS "Found Kazmath include dir: ${KAZMATH_INCLUDE_DIRS}")
ELSE(KAZMATH_INCLUDE_DIRS)
	MESSAGE(STATUS "Could NOT find Kazmath headers.")
ENDIF(KAZMATH_INCLUDE_DIRS)

IF(KAZMATH_LIBRARIES)
	MESSAGE(STATUS "Found Kazmath library: ${KAZMATH_LIBRARIES}")
ELSE(KAZMATH_LIBRARIES)
	MESSAGE(STATUS "Could NOT find Kazmath library.")
ENDIF(KAZMATH_LIBRARIES)

IF(KAZMATH_INCLUDE_DIRS AND KAZMATH_LIBRARIES)
	SET(KAZMATH_FOUND "YES")
ELSE(KAZMATH_INCLUDE_DIRS AND KAZMATH_LIBRARIES)
	SET(KAZMATH_FOUND "NO")
	IF(KAZMATH_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could not find Kazmath. Please install Kazmath (http://launchpad.net/kazmath)")
	ENDIF(KAZMATH_FIND_REQUIRED)
ENDIF(KAZMATH_INCLUDE_DIRS AND KAZMATH_LIBRARIES)
