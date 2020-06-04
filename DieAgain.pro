#-------------------------------------------------
#
# Project created by QtCreator 2020-06-02T13:33:48
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = DieAgain
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        common/convert_UTF.c \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        auto_critical_section.h \
        client/minidump_file_writer-inl.h \
        client/minidump_file_writer.h \
        client/windows/common/auto_critical_section.h \
        client/windows/common/ipc_protocol.h \
        client/windows/crash_generation/client_info.h \
        client/windows/crash_generation/crash_generation_client.h \
        client/windows/crash_generation/crash_generation_server.h \
        client/windows/crash_generation/minidump_generator.h \
        client/windows/handler/exception_handler.h \
        client/windows/sender/crash_report_sender.h \
        client_info.h \
        common/basictypes.h \
        common/byte_cursor.h \
        common/convert_UTF.h \
        common/dwarf_cfi_to_module.h \
        common/dwarf_cu_to_module.h \
        common/dwarf_line_to_module.h \
        common/language.h \
        common/long_string_dictionary.h \
        common/md5.h \
        common/memory_allocator.h \
        common/memory_range.h \
        common/minidump_type_helper.h \
        common/module.h \
        common/path_helper.h \
        common/scoped_ptr.h \
        common/simple_string_dictionary.h \
        common/stabs_reader.h \
        common/stabs_to_module.h \
        common/stdio_wrapper.h \
        common/string_conversion.h \
        common/symbol_data.h \
        common/test_assembler.h \
        common/unordered.h \
        common/using_std_string.h \
        common/windows/dia_util.h \
        common/windows/guid_string.h \
        common/windows/http_upload.h \
        common/windows/omap.h \
        common/windows/omap_internal.h \
        common/windows/pdb_source_line_writer.h \
        common/windows/string_utils-inl.h \
        crash_generation_client.h \
        crash_generation_server.h \
        crash_report_sender.h \
        exception_handler.h \
        google_breakpad/common/breakpad_types.h \
        google_breakpad/common/minidump_cpu_amd64.h \
        google_breakpad/common/minidump_cpu_arm.h \
        google_breakpad/common/minidump_cpu_arm64.h \
        google_breakpad/common/minidump_cpu_mips.h \
        google_breakpad/common/minidump_cpu_ppc.h \
        google_breakpad/common/minidump_cpu_ppc64.h \
        google_breakpad/common/minidump_cpu_sparc.h \
        google_breakpad/common/minidump_cpu_x86.h \
        google_breakpad/common/minidump_exception_linux.h \
        google_breakpad/common/minidump_exception_mac.h \
        google_breakpad/common/minidump_exception_ps3.h \
        google_breakpad/common/minidump_exception_solaris.h \
        google_breakpad/common/minidump_exception_win32.h \
        google_breakpad/common/minidump_format.h \
        google_breakpad/common/minidump_size.h \
        google_breakpad/processor/basic_source_line_resolver.h \
        google_breakpad/processor/call_stack.h \
        google_breakpad/processor/code_module.h \
        google_breakpad/processor/code_modules.h \
        google_breakpad/processor/dump_context.h \
        google_breakpad/processor/dump_object.h \
        google_breakpad/processor/exploitability.h \
        google_breakpad/processor/fast_source_line_resolver.h \
        google_breakpad/processor/memory_region.h \
        google_breakpad/processor/microdump.h \
        google_breakpad/processor/microdump_processor.h \
        google_breakpad/processor/minidump.h \
        google_breakpad/processor/minidump_processor.h \
        google_breakpad/processor/proc_maps_linux.h \
        google_breakpad/processor/process_result.h \
        google_breakpad/processor/process_state.h \
        google_breakpad/processor/source_line_resolver_base.h \
        google_breakpad/processor/source_line_resolver_interface.h \
        google_breakpad/processor/stack_frame.h \
        google_breakpad/processor/stack_frame_cpu.h \
        google_breakpad/processor/stack_frame_symbolizer.h \
        google_breakpad/processor/stackwalker.h \
        google_breakpad/processor/symbol_supplier.h \
        google_breakpad/processor/system_info.h \
        ipc_protocol.h \
        mainwindow.h \
        minidump_file_writer-inl.h \
        minidump_file_writer.h \
        minidump_generator.h

FORMS += \
        mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    client/windows/crash_generation/ReadMe.txt \
    libcommon.a \
    libcrash_generation_client.a \
    libcrash_report_sender.a \
    libexception_handler.a

LIBS += $$PWD/./libexception_handler.a
LIBS += $$PWD/./libcommon.a
LIBS += $$PWD/./libcrash_generation_client.a
LIBS += $$PWD/./libcrash_report_sender.a
