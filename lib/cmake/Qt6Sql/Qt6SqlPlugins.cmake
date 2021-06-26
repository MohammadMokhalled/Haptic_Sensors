include_guard(DIRECTORY)

include("${CMAKE_CURRENT_LIST_DIR}/Qt6QODBCDriverPluginConfig.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/Qt6QSQLiteDriverPluginConfig.cmake")


if(NOT OFF)
    set(_module_target "Qt6::Sql")
    # Properties can't be set on aliased targets, so make sure to unalias the target. This is needed
    # when Qt examples are built as part of the Qt build itself.
    get_target_property(_aliased_target ${_module_target} ALIASED_TARGET)
    if(_aliased_target)
        set(_module_target ${_aliased_target})
    endif()
    unset(_aliased_target)

    set(_default_plugins_are_enabled "$<NOT:$<STREQUAL:$<GENEX_EVAL:$<TARGET_PROPERTY:QT_DEFAULT_PLUGINS>>,0>>")
    set(_manual_plugins_genex "$<GENEX_EVAL:$<TARGET_PROPERTY:QT_PLUGINS>>")
    set(_no_plugins_genex "$<GENEX_EVAL:$<TARGET_PROPERTY:QT_NO_PLUGINS>>")

    # Plugin genex marker for prl processing.
    set(_is_plugin_marker_genex "$<BOOL:QT_IS_PLUGIN_GENEX>")

    # In super builds the rules below pollute the dependency rule for the
    # plugin target when it's being build, causing cyclic dependencies.
    # to overcome this, we check if the current target where this rule evaluates
    # has a QT_BUILD_PROJECT_NAME equal to the current PROJECT_NAME.
    # If so we disable the injection of plugin link rules to avoid cyclic
    # dependencies.
    if ()
        set(_build_allow_plugin_link_rules_genex "$<NOT:$<STREQUAL:$<TARGET_PROPERTY:QT_BUILD_PROJECT_NAME>,QtBase>>")
    else()
        set(_build_allow_plugin_link_rules_genex 1)
    endif()

    # The code in here uses the properties defined in qt_import_plugins (Qt6CoreMacros.cmake)
    foreach(target QODBCDriverPlugin;QSQLiteDriverPlugin)
        set(_plugin_target "Qt6::${target}")
        set(_plugin_target_versionless "Qt::${target}")
        get_target_property(_classname "${_plugin_target}" QT_PLUGIN_CLASS_NAME)
        if(NOT _classname)
          message("Warning: plugin ${_plugin_target} has no class name, skipping.")
          continue()
        endif()

        get_target_property(_plugin_type "${_plugin_target}" QT_PLUGIN_TYPE)
        if(NOT _plugin_type)
          message("Warning: plugin ${_plugin_target} has no type ('${_plugin_type}'), skipping.")
          continue()
        endif()

        list(APPEND "QT_ALL_PLUGINS_FOUND_BY_FIND_PACKAGE_${_plugin_type}" "${target}")

        set(_plugin_is_default "$<TARGET_PROPERTY:${_plugin_target},QT_DEFAULT_PLUGIN>")

        # INCLUDE
        set(_plugin_is_whitelisted "$<IN_LIST:${_plugin_target},${_manual_plugins_genex}>")
        set(_plugin_versionless_is_whitelisted
            "$<IN_LIST:${_plugin_target_versionless},${_manual_plugins_genex}>")

        # Note: qt_import_plugins sets the QT_PLUGINS_${_plugin_type} to "-"
        # when excluding it with EXCLUDE_BY_TYPE,
        # which ensures that no plug-in will be supported unless explicitly re-added afterwards.
        string(CONCAT _plugin_is_not_blacklisted
            "$<AND:"
                "$<NOT:" # EXCLUDE
                    "$<IN_LIST:${_plugin_target},${_no_plugins_genex}>"
                ">,"
                "$<NOT:"
                    "$<IN_LIST:${_plugin_target_versionless},${_no_plugins_genex}>"
                ">,"
                # Excludes both plugins targeted by EXCLUDE_BY_TYPE and not included in
                # INCLUDE_BY_TYPE.
                "$<STREQUAL:,$<GENEX_EVAL:$<TARGET_PROPERTY:QT_PLUGINS_${_plugin_type}>>>"
            ">"
        )

        # Support INCLUDE_BY_TYPE
        string(CONCAT _plugin_is_in_type_whitelist
            "$<IN_LIST:"
                "${_plugin_target},"
                "$<GENEX_EVAL:"
                    "$<TARGET_PROPERTY:QT_PLUGINS_${_plugin_type}>"
                ">"
            ">"
        )
        string(CONCAT _plugin_versionless_is_in_type_whitelist
            "$<IN_LIST:"
                "${_plugin_target_versionless},"
                "$<GENEX_EVAL:"
                    "$<TARGET_PROPERTY:QT_PLUGINS_${_plugin_type}>"
                ">"
            ">"
        )

        # Complete condition that defines whether a static plugin is linked
        string(CONCAT _plugin_condition
            "$<BOOL:$<AND:"
                "${_is_plugin_marker_genex},"
                "${_build_allow_plugin_link_rules_genex},"
                "$<OR:"
                    "${_plugin_is_whitelisted},"
                    "${_plugin_versionless_is_whitelisted},"
                    "${_plugin_is_in_type_whitelist},"
                    "${_plugin_versionless_is_in_type_whitelist},"
                    "$<AND:"
                        "${_default_plugins_are_enabled},"
                        "${_plugin_is_default},"
                        "${_plugin_is_not_blacklisted}"
                    ">"
                ">"
            ">>"
        )

        # If this condition is true, we link against the plug-in
        set(_plugin_genex "$<${_plugin_condition}:${_plugin_target}>")
        target_link_libraries(${_module_target} INTERFACE "${_plugin_genex}")

        set(_generated_qt_plugin_file_name
            "${CMAKE_CURRENT_BINARY_DIR}/qt_Sql_${target}.cpp")
        set(_generated_qt_plugin_file_content "#include <QtPlugin>\nQ_IMPORT_PLUGIN(${_classname})")

        # Generate a source file to import that plug-in. Be careful not to
        # update the timestamp of the generated file if we are not going to
        # change anything. Otherwise we will trigger CMake's autogen to re-run
        # and executables will then need to at least relink.
        set(need_write TRUE)
        if(EXISTS ${_generated_qt_plugin_file_name})
            file(READ ${_generated_qt_plugin_file_name} old_contents)
            if(old_contents STREQUAL "${_generated_qt_plugin_file_content}")
                set(need_write FALSE)
            endif()
        endif()
        if(need_write)
            file(WRITE "${_generated_qt_plugin_file_name}"
                       "${_generated_qt_plugin_file_content}")
        endif()

        target_sources(${_module_target} INTERFACE
                       "$<${_plugin_condition}:${_generated_qt_plugin_file_name}>")
    endforeach()
endif()
