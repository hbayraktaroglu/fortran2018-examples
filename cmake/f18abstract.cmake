file(READ ${CMAKE_CURRENT_LIST_DIR}/../src/standard/abstract.f90 _code)

check_source_compiles(Fortran
"${_code}"
f18abstract)
