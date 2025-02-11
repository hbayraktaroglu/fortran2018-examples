set_directory_properties(PROPERTIES LABELS character)

add_executable(ascii ascii.f90)
add_test(NAME AsciiSpecial COMMAND ascii)

add_executable(character_array character_array.f90)
add_test(NAME array COMMAND character_array)

add_executable(character_allocatable character_allocatable.f90)
add_test(NAME allocatable COMMAND character_allocatable)


add_executable(split split_string.f90)
add_test(NAME SplitString COMMAND split)

add_executable(str2int str2int.f90)
add_test(NAME Str2Int COMMAND str2int)

add_executable(utf8 utf8.f90)
set_target_properties(utf8 PROPERTIES EXCLUDE_FROM_ALL $<NOT:$<BOOL:${f03utf8}>>)
add_test(NAME utf8 COMMAND utf8)
set_tests_properties(utf8 PROPERTIES DISABLED $<NOT:$<BOOL:${f03utf8}>>)

add_executable(printorwrite print_vs_write.f90)
add_test(NAME print_utf8 COMMAND printorwrite)

add_executable(special_char special_characters.f90)
add_test(NAME Special COMMAND special_char)

add_executable(charlen charlen.f90)
add_test(NAME Len COMMAND charlen)

add_executable(overwrite_stdout overwrite_stdout.f90)
add_test(NAME OverwriteStdout COMMAND overwrite_stdout)

add_executable(string_utils string_utils.f90 test_string.f90)
add_test(NAME utils COMMAND string_utils)
