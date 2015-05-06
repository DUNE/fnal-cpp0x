# ======================================================================
# process this directory's source files
# ======================================================================

# ----------------------------------------------------------------------
# identify headers to install

set( PUBLIC_HDRS
  algorithm
  array
  cmath
  compiler_macros.h
  cstddef
  cstdint
  functional
  iterator
  memory
  numeric
  random
  regex
  string
  system_error
  tuple
  type_traits
  utility
)

set( DETAIL_HDRS
  detail/a_x_plus_c_mod_m
  detail/add_rv_ref
  detail/bernoulli_distribution
  detail/binomial_distribution
  detail/cauchy_distribution
  detail/chi_squared_distribution
  detail/config
  detail/declval
  detail/discard_block_engine
  detail/discrete_distribution
  detail/exponential_distribution
  detail/extreme_value_distribution
  detail/fisher_f_distribution
  detail/gamma_distribution
  detail/generate_canonical
  detail/geometric_distribution
  detail/independent_bits_engine
  detail/is_nonnegative
  detail/is_sseq
  detail/linear_congruential_engine
  detail/log2
  detail/lognormal_distribution
  detail/low_order_bits
  detail/mersenne_twister_engine
  detail/negative_binomial_distribution
  detail/normal_distribution
  detail/nullptr
  detail/piecewise_constant_distribution
  detail/piecewise_linear_distribution
  detail/poisson_distribution
  detail/pow2
  detail/predefined_engine_types
  detail/random_device
  detail/seed_seq
  detail/shuffle_order_engine
  detail/stats
  detail/stream_state_guard
  detail/student_t_distribution
  detail/subtract_with_carry_engine
  detail/uniform_int_distribution
  detail/uniform_real_distribution
  detail/unique_ptr
  detail/weibull_distribution
)

# ----------------------------------------------------------------------
# identify headers' installed locations

install( FILES ${PUBLIC_HDRS}
         DESTINATION ${product}/${version}/include/cpp0x
)
install( FILES ${DETAIL_HDRS}
         DESTINATION ${product}/${version}/include/cpp0x/detail
)
