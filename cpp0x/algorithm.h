#ifndef CPP0X_ALGORITHM_H
#define CPP0X_ALGORITHM_H

// ======================================================================
//
// algorithm - accommodations for as-yet unsupported C++0X features
//
// ----------------------------------------------------------------------
//
// This source file is intended for only short-term use.  Once compilers
// support the necessary C++0X features, this file should be no longer
// used and should go away.
//
// ======================================================================


#include "cpp0x/_config_"

#include <algorithm>
#include <utility>    // pair


// ----------------------------------------------------------------------
// CPP0X_HAS_ALGORITHM_MIN_MAX

#if defined(CPP0X_HAS_ALGORITHM_MIN_MAX)

#else
  namespace std  {

    #if 0
    template< class FwdIter >
    FwdIter
      min_element( FwdIter b, FwdIter e )
    {
      if( b == e )
        return e;
      FwdIter result = b;
      while( ++b != e )
        if( *b < *result )
          result = b;
      return result;
    }

    template< class FwdIter, class Compare >
    FwdIter
      min_element( FwdIter b, FwdIter e
                 , Compare const lt
                 )
    {
      if( b == e )
        return e;
      FwdIter result = b;
      while( ++b != e )
        if( lt( *b, *result ) )
          result = b;
      return result;
    }

    template< class FwdIter >
    FwdIter
      max_element( FwdIter b, FwdIter e )
    {
      if( b == e )
        return e;
      FwdIter result = b;
      while( ++b != e )
        if( *result < *b )
          result = b;
      return result;
    }

    template< class FwdIter, class Compare >
    FwdIter
      max_element( FwdIter b, FwdIter e
                 , Compare const lt
                 )
    {
      if( b == e )
        return e;
      FwdIter result = b;
      while( ++b != e )
        if( lt( *result, *b ) )
          result = b;
      return result;
    }
    #endif // 0

    namespace {
      template< class FwdIter >
        void  mm_hop( FwdIter & i, FwdIter j )  { i = j, ++i; }

      template< class FwdIter >
        void  mm_adjust( FwdIter m, FwdIter & min
                       , FwdIter M, FwdIter & max )
      { if( *m < *min )  min = m;
        if( *max < *M )  max = M;
      }

      template< class FwdIter, class Compare >
        void  mm_adjust( FwdIter m, FwdIter & min
                       , FwdIter M, FwdIter & max
                       , Compare lt )
      { if( lt(*m, *min) )  min = m;
        if( lt(*max, *M) )  max = M;
      }
    }

    template< class FwdIter >
    pair<FwdIter, FwdIter>
      minmax_element( FwdIter b, FwdIter const e )
    {
      FwdIter n = b;
      if( b == e  ||  ++n == e )
        return make_pair(b, b);

      pair<FwdIter,FwdIter> r =  *b < *n  ?  make_pair(b, n)
                                          :  make_pair(n, b);

      while( mm_hop(b,n), b != e )  {
        mm_hop(n,b);
        if( n == e )  { mm_adjust(b, r.first, b, r.second ); break; }
        if( *b < *n ) mm_adjust(b, r.first, n, r.second );
        else          mm_adjust(n, r.first, b, r.second );
      }

      return r;
    }

    template< class FwdIter, class Compare >
    pair<FwdIter, FwdIter>
      minmax_element( FwdIter b, FwdIter const e, Compare lt )
    {
      FwdIter n = b;
      if( b == e  ||  ++n == e )
        return make_pair(b, b);

      pair<FwdIter,FwdIter> r =  lt(*b, *n)  ?  make_pair(b, n)
                                             :  make_pair(n, b);

      while( mm_hop(b,n), b != e )  {
        mm_hop(n,b);
        if( n == e )  { mm_adjust(b, r.first, b, r.second, lt ); break; }
        if( lt(*b, *n) ) mm_adjust(b, r.first, n, r.second, lt );
        else                  mm_adjust(n, r.first, b, r.second, lt );
      }

      return r;
    }

  }  // namespace std

#endif  // CPP0X_HAS_ALGORITHM_MIN_MAX


// ======================================================================


#endif  // CPP0X_ALGORITHM_H
