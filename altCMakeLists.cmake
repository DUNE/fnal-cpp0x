#-----------------------------------------------------------------------
# Configure cpp0x for C++11 support
# - Convert CheckCXX11Features variables to CPP0X's internal names
set(CPP0X_HAS_AUTO ${HAS_CXX11_AUTO})
set(CPP0X_HAS_CONSTEXPR_FUNCTIONS ${HAS_CXX11_CONSTEXPR})
set(CPP0X_HAS_CONSTEXPR_VARIABLES ${HAS_CXX11_CONSTEXPR})
set(CPP0X_HAS_DECLTYPE ${HAS_CXX11_DECLTYPE})
set(CPP0X_HAS_EXPLICIT_CONVERSION_OPERATORS ${HAS_CXX11_EXPLICIT_CONVERSION_OPERATORS})
set(CPP0X_HAS_FCTN_TEMPLATE_DEFAULT_ARGS ${HAS_CXX11_DEFAULT_TEMPLATE_ARGUMENTS})
set(CPP0X_HAS_LAMBDAS ${HAS_CXX11_LAMBDA})
set(CPP0X_HAS_NOEXCEPT ${HAS_CXX11_NOEXCEPT})
set(CPP0X_HAS_NULLPTR ${HAS_CXX11_NULLPTR})
set(CPP0X_HAS_RVALUE_REFERENCES ${HAS_CXX11_RVALUE_REFERENCES})
set(CPP0X_HAS_STATIC_ASSERT ${HAS_CXX11_STATIC_ASSERT})
set(CPP0X_HAS_VARIADIC_TEMPLATES ${HAS_CXX11_VARIADIC_TEMPLATES})
set(CPP0X_HAS_ALGORITHM_ALL_OF ${HAS_CXX11_ALGORITHM_ALL_OF})
set(CPP0X_HAS_ALGORITHM_ANY_OF ${HAS_CXX11_ALGORITHM_ANY_OF})
set(CPP0X_HAS_ALGORITHM_COPY_N ${HAS_CXX11_ALGORITHM_COPY_N})
set(CPP0X_HAS_ALGORITHM_FIND_IF_NOT ${HAS_CXX11_ALGORITHM_FIND_IF_NOT})
set(CPP0X_HAS_ALGORITHM_IS_PARTITIONED ${HAS_CXX11_ALGORITHM_IS_PARTITIONED})
set(CPP0X_HAS_ALGORITHM_IS_SORTED ${HAS_CXX11_ALGORITHM_IS_SORTED})
set(CPP0X_HAS_ALGORITHM_MIN_MAX ${HAS_CXX11_ALGORITHM_MIN_MAX})
set(CPP0X_HAS_ALGORITHM_NONE_OF ${HAS_CXX11_ALGORITHM_NONE_OF})
set(CPP0X_HAS_ALGORITHM_PARTITION_POINT ${HAS_CXX11_ALGORITHM_PARTITION_POINT})
set(CPP0X_HAS_ALGORITHM_SHUFFLE ${HAS_CXX11_ALGORITHM_SHUFFLE})
set(CPP0X_HAS_ARRAY_HDR ${HAS_CXX11_ARRAY})
set(CPP0X_HAS_CMATH_C99 ${HAS_CXX11_CMATH_C99})
set(CPP0X_HAS_CMATH_FPCLASSIFICATION ${HAS_CXX11_CMATH_FPCLASSIFY})
set(CPP0X_HAS_CSTDDEF_NULLPTR_T ${HAS_CXX11_CSTDDEF_NULLPTR_T})
set(CPP0X_HAS_CSTDINT_HDR ${HAS_CXX11_CSTDINT_H})
set(CPP0X_HAS_FUNCTIONAL_BIND ${HAS_CXX11_FUNCTIONAL_BIND})
set(CPP0X_HAS_FUNCTIONAL_FUNCTION ${HAS_CXX11_FUNCTIONAL_FUNCTION})
set(CPP0X_HAS_FUNCTIONAL_HASH ${HAS_CXX11_FUNCTIONAL_HASH})
set(CPP0X_HAS_FUNCTIONAL_MEM_FN ${HAS_CXX11_FUNCTIONAL_MEM_FN})
set(CPP0X_HAS_FUNCTIONAL_REFERENCE_WRAPPER ${HAS_CXX11_FUNCTIONAL_REF})
set(CPP0X_HAS_ITERATOR_RANGE ${HAS_CXX11_RANGE_BASED_FOR})
set(CPP0X_HAS_MEMORY_SHARED_PTR ${HAS_CXX11_MEMORY_SHARED_PTR})
set(CPP0X_HAS_MEMORY_UNIQUE_PTR ${HAS_CXX11_MEMORY_UNIQUE_PTR})
set(CPP0X_HAS_NUMERIC_IOTA ${HAS_CXX11_NUMERIC_IOTA})
set(CPP0X_HAS_RANDOM_HDR ${HAS_CXX11_RANDOM})
#set(CPP0X_HAS_REGEX_HDR ${HAS_CXX11_LIB_REGEX})
set(CPP0X_HAS_STRING_NUMERIC_CONVERSIONS ${HAS_CXX11_STRING_NUMERIC_CONVERSIONS}
)
set(CPP0X_HAS_SYSTEM_ERROR_HDR ${HAS_CXX11_SYSTEM_ERROR})
set(CPP0X_HAS_TUPLE_HDR ${HAS_CXX11_TUPLE})
set(CPP0X_HAS_TYPE_TRAITS_HDR ${HAS_CXX11_TYPE_TRAITS})
set(CPP0X_HAS_UTILITY_DECLVAL ${HAS_CXX11_UTILITY_DECLVAL})

#-----------------------------------------------------------------------
# Base directories and sources
#
set(cpp0x_ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/cpp0x")
set(cpp0x_INCLUDE_DIR "${cpp0x_ROOT_DIR}/cpp0x")

# - Build cpp0x
set( PUBLIC_HDRS
 ${cpp0x_INCLUDE_DIR}/algorithm
 ${cpp0x_INCLUDE_DIR}/array
 ${cpp0x_INCLUDE_DIR}/cmath
 ${cpp0x_INCLUDE_DIR}/compiler_macros.h
 ${cpp0x_INCLUDE_DIR}/cstddef
 ${cpp0x_INCLUDE_DIR}/cstdint
 ${cpp0x_INCLUDE_DIR}/functional
 ${cpp0x_INCLUDE_DIR}/iterator
 ${cpp0x_INCLUDE_DIR}/memory
 ${cpp0x_INCLUDE_DIR}/numeric
 ${cpp0x_INCLUDE_DIR}/random
 ${cpp0x_INCLUDE_DIR}/regex
 ${cpp0x_INCLUDE_DIR}/string
 ${cpp0x_INCLUDE_DIR}/system_error
 ${cpp0x_INCLUDE_DIR}/tuple
 ${cpp0x_INCLUDE_DIR}/type_traits
 ${cpp0x_INCLUDE_DIR}/utility
)

set( DETAIL_HDRS
 ${cpp0x_INCLUDE_DIR}/detail/a_x_plus_c_mod_m
 ${cpp0x_INCLUDE_DIR}/detail/add_rv_ref
 ${cpp0x_INCLUDE_DIR}/detail/bernoulli_distribution
 ${cpp0x_INCLUDE_DIR}/detail/binomial_distribution
 ${cpp0x_INCLUDE_DIR}/detail/cauchy_distribution
 ${cpp0x_INCLUDE_DIR}/detail/chi_squared_distribution
 ${cpp0x_INCLUDE_DIR}/detail/declval
 ${cpp0x_INCLUDE_DIR}/detail/discard_block_engine
 ${cpp0x_INCLUDE_DIR}/detail/discrete_distribution
 ${cpp0x_INCLUDE_DIR}/detail/exponential_distribution
 ${cpp0x_INCLUDE_DIR}/detail/extreme_value_distribution
 ${cpp0x_INCLUDE_DIR}/detail/fisher_f_distribution
 ${cpp0x_INCLUDE_DIR}/detail/gamma_distribution
 ${cpp0x_INCLUDE_DIR}/detail/generate_canonical
 ${cpp0x_INCLUDE_DIR}/detail/geometric_distribution
 ${cpp0x_INCLUDE_DIR}/detail/independent_bits_engine
 ${cpp0x_INCLUDE_DIR}/detail/is_nonnegative
 ${cpp0x_INCLUDE_DIR}/detail/is_sseq
 ${cpp0x_INCLUDE_DIR}/detail/linear_congruential_engine
 ${cpp0x_INCLUDE_DIR}/detail/log2
 ${cpp0x_INCLUDE_DIR}/detail/lognormal_distribution
 ${cpp0x_INCLUDE_DIR}/detail/low_order_bits
 ${cpp0x_INCLUDE_DIR}/detail/mersenne_twister_engine
 ${cpp0x_INCLUDE_DIR}/detail/negative_binomial_distribution
 ${cpp0x_INCLUDE_DIR}/detail/normal_distribution
 ${cpp0x_INCLUDE_DIR}/detail/nullptr
 ${cpp0x_INCLUDE_DIR}/detail/piecewise_constant_distribution
 ${cpp0x_INCLUDE_DIR}/detail/piecewise_linear_distribution
 ${cpp0x_INCLUDE_DIR}/detail/poisson_distribution
 ${cpp0x_INCLUDE_DIR}/detail/pow2
 ${cpp0x_INCLUDE_DIR}/detail/predefined_engine_types
 ${cpp0x_INCLUDE_DIR}/detail/random_device
 ${cpp0x_INCLUDE_DIR}/detail/seed_seq
 ${cpp0x_INCLUDE_DIR}/detail/shuffle_order_engine
 ${cpp0x_INCLUDE_DIR}/detail/stats
 ${cpp0x_INCLUDE_DIR}/detail/stream_state_guard
 ${cpp0x_INCLUDE_DIR}/detail/student_t_distribution
 ${cpp0x_INCLUDE_DIR}/detail/subtract_with_carry_engine
 ${cpp0x_INCLUDE_DIR}/detail/uniform_int_distribution
 ${cpp0x_INCLUDE_DIR}/detail/uniform_real_distribution
 ${cpp0x_INCLUDE_DIR}/detail/unique_ptr
 ${cpp0x_INCLUDE_DIR}/detail/weibull_distribution
)

configure_file(cpp0x-config.in ${CMAKE_CURRENT_BINARY_DIR}/cpp0x/detail/config)
list(APPEND DETAIL_HDRS ${CMAKE_CURRENT_BINARY_DIR}/cpp0x/detail/config)

set_source_files_properties(${PUBLIC_HDRS} ${DETAIL_HDRS}
  PROPERTIES
    HEADER_FILE_ONLY TRUE
  )

#-----------------------------------------------------------------------
# Create a dummy library to check export
add_library(cpp0x OBJECT dummy.cc ${PUBLIC_HDRS} ${DETAIL_HDRS})

# TEMP local install of headers
install(FILES ${PUBLIC_HDRS}
  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/cpp0x
  COMPONENT Development
  )
install(FILES ${DETAIL_HDRS}
  DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/cpp0x/detail
  COMPONENT Development
  )

