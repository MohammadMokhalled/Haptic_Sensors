# Additional target information for Qt6CoreTools
if(NOT DEFINED QT_DEFAULT_IMPORT_CONFIGURATION)
    set(QT_DEFAULT_IMPORT_CONFIGURATION RELEASE)
endif()
get_target_property(_qt_imported_location Qt6::moc IMPORTED_LOCATION_RELEASE)
get_target_property(_qt_imported_implib Qt6::moc IMPORTED_IMPLIB_RELEASE)
get_target_property(_qt_imported_soname Qt6::moc IMPORTED_SONAME_RELEASE)
get_target_property(_qt_imported_location_default Qt6::moc IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_implib_default Qt6::moc IMPORTED_IMPLIB_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_soname_default Qt6::moc IMPORTED_SONAME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::moc" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::moc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_location)
    set_property(TARGET Qt6::moc PROPERTY IMPORTED_LOCATION_RELWITHDEBINFO "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::moc PROPERTY IMPORTED_IMPLIB_RELWITHDEBINFO "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::moc PROPERTY IMPORTED_SONAME_RELWITHDEBINFO "${_qt_imported_soname}")
endif()

# Import target "Qt6::moc" for configuration "MinSizeRel"
set_property(TARGET Qt6::moc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::moc PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::moc PROPERTY IMPORTED_IMPLIB_MINSIZEREL "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::moc PROPERTY IMPORTED_SONAME_MINSIZEREL "${_qt_imported_soname}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::moc PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
if(_qt_imported_implib_default)
    set_property(TARGET Qt6::moc PROPERTY IMPORTED_IMPLIB "${_qt_imported_implib_default}")
endif()
if(_qt_imported_soname_default)
    set_property(TARGET Qt6::moc PROPERTY IMPORTED_SONAME "${_qt_imported_soname_default}")
endif()
get_target_property(_qt_imported_location Qt6::rcc IMPORTED_LOCATION_RELEASE)
get_target_property(_qt_imported_implib Qt6::rcc IMPORTED_IMPLIB_RELEASE)
get_target_property(_qt_imported_soname Qt6::rcc IMPORTED_SONAME_RELEASE)
get_target_property(_qt_imported_location_default Qt6::rcc IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_implib_default Qt6::rcc IMPORTED_IMPLIB_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_soname_default Qt6::rcc IMPORTED_SONAME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::rcc" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::rcc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_location)
    set_property(TARGET Qt6::rcc PROPERTY IMPORTED_LOCATION_RELWITHDEBINFO "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::rcc PROPERTY IMPORTED_IMPLIB_RELWITHDEBINFO "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::rcc PROPERTY IMPORTED_SONAME_RELWITHDEBINFO "${_qt_imported_soname}")
endif()

# Import target "Qt6::rcc" for configuration "MinSizeRel"
set_property(TARGET Qt6::rcc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::rcc PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::rcc PROPERTY IMPORTED_IMPLIB_MINSIZEREL "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::rcc PROPERTY IMPORTED_SONAME_MINSIZEREL "${_qt_imported_soname}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::rcc PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
if(_qt_imported_implib_default)
    set_property(TARGET Qt6::rcc PROPERTY IMPORTED_IMPLIB "${_qt_imported_implib_default}")
endif()
if(_qt_imported_soname_default)
    set_property(TARGET Qt6::rcc PROPERTY IMPORTED_SONAME "${_qt_imported_soname_default}")
endif()
get_target_property(_qt_imported_location Qt6::tracegen IMPORTED_LOCATION_RELEASE)
get_target_property(_qt_imported_implib Qt6::tracegen IMPORTED_IMPLIB_RELEASE)
get_target_property(_qt_imported_soname Qt6::tracegen IMPORTED_SONAME_RELEASE)
get_target_property(_qt_imported_location_default Qt6::tracegen IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_implib_default Qt6::tracegen IMPORTED_IMPLIB_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_soname_default Qt6::tracegen IMPORTED_SONAME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::tracegen" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::tracegen APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_location)
    set_property(TARGET Qt6::tracegen PROPERTY IMPORTED_LOCATION_RELWITHDEBINFO "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::tracegen PROPERTY IMPORTED_IMPLIB_RELWITHDEBINFO "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::tracegen PROPERTY IMPORTED_SONAME_RELWITHDEBINFO "${_qt_imported_soname}")
endif()

# Import target "Qt6::tracegen" for configuration "MinSizeRel"
set_property(TARGET Qt6::tracegen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::tracegen PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::tracegen PROPERTY IMPORTED_IMPLIB_MINSIZEREL "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::tracegen PROPERTY IMPORTED_SONAME_MINSIZEREL "${_qt_imported_soname}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::tracegen PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
if(_qt_imported_implib_default)
    set_property(TARGET Qt6::tracegen PROPERTY IMPORTED_IMPLIB "${_qt_imported_implib_default}")
endif()
if(_qt_imported_soname_default)
    set_property(TARGET Qt6::tracegen PROPERTY IMPORTED_SONAME "${_qt_imported_soname_default}")
endif()
get_target_property(_qt_imported_location Qt6::cmake_automoc_parser IMPORTED_LOCATION_RELEASE)
get_target_property(_qt_imported_implib Qt6::cmake_automoc_parser IMPORTED_IMPLIB_RELEASE)
get_target_property(_qt_imported_soname Qt6::cmake_automoc_parser IMPORTED_SONAME_RELEASE)
get_target_property(_qt_imported_location_default Qt6::cmake_automoc_parser IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_implib_default Qt6::cmake_automoc_parser IMPORTED_IMPLIB_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_soname_default Qt6::cmake_automoc_parser IMPORTED_SONAME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::cmake_automoc_parser" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::cmake_automoc_parser APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_location)
    set_property(TARGET Qt6::cmake_automoc_parser PROPERTY IMPORTED_LOCATION_RELWITHDEBINFO "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::cmake_automoc_parser PROPERTY IMPORTED_IMPLIB_RELWITHDEBINFO "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::cmake_automoc_parser PROPERTY IMPORTED_SONAME_RELWITHDEBINFO "${_qt_imported_soname}")
endif()

# Import target "Qt6::cmake_automoc_parser" for configuration "MinSizeRel"
set_property(TARGET Qt6::cmake_automoc_parser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::cmake_automoc_parser PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::cmake_automoc_parser PROPERTY IMPORTED_IMPLIB_MINSIZEREL "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::cmake_automoc_parser PROPERTY IMPORTED_SONAME_MINSIZEREL "${_qt_imported_soname}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::cmake_automoc_parser PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
if(_qt_imported_implib_default)
    set_property(TARGET Qt6::cmake_automoc_parser PROPERTY IMPORTED_IMPLIB "${_qt_imported_implib_default}")
endif()
if(_qt_imported_soname_default)
    set_property(TARGET Qt6::cmake_automoc_parser PROPERTY IMPORTED_SONAME "${_qt_imported_soname_default}")
endif()
get_target_property(_qt_imported_location Qt6::qlalr IMPORTED_LOCATION_RELEASE)
get_target_property(_qt_imported_implib Qt6::qlalr IMPORTED_IMPLIB_RELEASE)
get_target_property(_qt_imported_soname Qt6::qlalr IMPORTED_SONAME_RELEASE)
get_target_property(_qt_imported_location_default Qt6::qlalr IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_implib_default Qt6::qlalr IMPORTED_IMPLIB_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_soname_default Qt6::qlalr IMPORTED_SONAME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::qlalr" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::qlalr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_location)
    set_property(TARGET Qt6::qlalr PROPERTY IMPORTED_LOCATION_RELWITHDEBINFO "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::qlalr PROPERTY IMPORTED_IMPLIB_RELWITHDEBINFO "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::qlalr PROPERTY IMPORTED_SONAME_RELWITHDEBINFO "${_qt_imported_soname}")
endif()

# Import target "Qt6::qlalr" for configuration "MinSizeRel"
set_property(TARGET Qt6::qlalr APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::qlalr PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::qlalr PROPERTY IMPORTED_IMPLIB_MINSIZEREL "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::qlalr PROPERTY IMPORTED_SONAME_MINSIZEREL "${_qt_imported_soname}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::qlalr PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
if(_qt_imported_implib_default)
    set_property(TARGET Qt6::qlalr PROPERTY IMPORTED_IMPLIB "${_qt_imported_implib_default}")
endif()
if(_qt_imported_soname_default)
    set_property(TARGET Qt6::qlalr PROPERTY IMPORTED_SONAME "${_qt_imported_soname_default}")
endif()
get_target_property(_qt_imported_location Qt6::qmake IMPORTED_LOCATION_RELEASE)
get_target_property(_qt_imported_implib Qt6::qmake IMPORTED_IMPLIB_RELEASE)
get_target_property(_qt_imported_soname Qt6::qmake IMPORTED_SONAME_RELEASE)
get_target_property(_qt_imported_location_default Qt6::qmake IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_implib_default Qt6::qmake IMPORTED_IMPLIB_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_soname_default Qt6::qmake IMPORTED_SONAME_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::qmake" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::qmake APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)

if(_qt_imported_location)
    set_property(TARGET Qt6::qmake PROPERTY IMPORTED_LOCATION_RELWITHDEBINFO "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::qmake PROPERTY IMPORTED_IMPLIB_RELWITHDEBINFO "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::qmake PROPERTY IMPORTED_SONAME_RELWITHDEBINFO "${_qt_imported_soname}")
endif()

# Import target "Qt6::qmake" for configuration "MinSizeRel"
set_property(TARGET Qt6::qmake APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::qmake PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()
if(_qt_imported_implib)
    set_property(TARGET Qt6::qmake PROPERTY IMPORTED_IMPLIB_MINSIZEREL "${_qt_imported_implib}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::qmake PROPERTY IMPORTED_SONAME_MINSIZEREL "${_qt_imported_soname}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::qmake PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
if(_qt_imported_implib_default)
    set_property(TARGET Qt6::qmake PROPERTY IMPORTED_IMPLIB "${_qt_imported_implib_default}")
endif()
if(_qt_imported_soname_default)
    set_property(TARGET Qt6::qmake PROPERTY IMPORTED_SONAME "${_qt_imported_soname_default}")
endif()

unset(_qt_imported_location)
unset(_qt_imported_location_default)
unset(_qt_imported_soname)
unset(_qt_imported_soname_default)